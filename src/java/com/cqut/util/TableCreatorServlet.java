package com.cqut.util;

import java.lang.reflect.Field;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

import org.springframework.stereotype.Service;

import com.cqut.dao.TableCreatorDao;


@Service
public class TableCreatorServlet extends HttpServlet {

	@Override
	public void init() throws ServletException {
		String isCreate = PropertiesTool.getSystemPram("createTalbe");
		if (!"true".equals(isCreate)) {
			//System.out.println("不创建表");
			return;
		}

		TableCreatorDao dao = (TableCreatorDao) SpringContextHolder
				.getBean("tableCreatorDao");

		IClassLoaderTool classLoader = (IClassLoaderTool) SpringContextHolder
				.getBean("classLoader");

		String entityPackage = PropertiesTool.getSystemPram("entityPath");
		if (entityPackage == null) {
			System.err.println("读取entity所在路径出错,默认使用com.cqut.entity");
			entityPackage = "com.cqut.entity";
		}
		List<Class<?>> classes = classLoader
				.loaderClassInPackage(entityPackage);

		for (Class<?> clazz : classes) {

			String className = clazz.getSimpleName();
			String i = dao.existsTable(className.toString()/*toUpperCase()*/);

			if (i == null) {
				Set<String> fieldSqls = new HashSet<String>();
				Field[] fs = clazz.getDeclaredFields();
				for (Field f : fs) {
					Object o = f.getAnnotation(ID.class);
					if (o != null) { // 该字段为id
						String fieldSql = f.getName()
								+ " varchar(255) NOT NULL PRIMARY KEY ";
						fieldSqls.add(fieldSql);
					} else {
						String typeName = f.getType().getName();
						if (typeName.equals("java.lang.String")) {
							fieldSqls.add(f.getName() + " varchar(255) ");
						} else if (typeName.equals("int")) {
							fieldSqls.add(f.getName() + " Integer ");
						} else if (typeName.equals("java.util.Date")) {
							fieldSqls.add(f.getName() + " datetime ");
						} else if (typeName.equals("boolean")) {
							fieldSqls.add(f.getName() + " bit ");
						} else if (typeName.equals("double")) {
							fieldSqls.add(f.getName() + " double ");
						} else if (typeName.equals("float")) {
							fieldSqls.add(f.getName() + " float ");
						} else if (typeName.equals("long")) {
							fieldSqls.add(f.getName() + " bigint ");
						} else {
							System.out.println(f.getName() + "类型无法识别，默认使用字符串");
							fieldSqls.add(f.getName() + "  varchar(255)  ");
						}
					}
				}
				dao.createTable(className, fieldSqls);
			}
		}
	}
}
