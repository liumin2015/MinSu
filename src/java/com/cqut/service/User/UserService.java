package com.cqut.service.User;


import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.cqut.dao.SearchDao;
import  com.cqut.dao.User.UserDao;
import  com.cqut.entity.User;
import com.cqut.util.EntityIDFactory;

@Service
public class UserService  implements IUserService{
	
	@Resource(name="userDao")
	UserDao dao ;
	
	@Resource(name="searchDao")
	SearchDao searchDao;
	
	
	// 登录
		@Override
		public String userLogin(String loginName, String passwrod,
				HttpServletRequest request, HttpServletResponse response)
				throws Exception {

			HttpSession session = request.getSession();

			// 操作对应的操作员
			String condition = "userName = '" + loginName + "'";
			List<User> users = dao.getByCondition(condition);

			// 没找到对应用户
			if (users.size() == 0) {
				return "-1";
			}

			User user = users.get(0);

			// 密码错误
			if (user == null|| !user.getPassword().equals(passwrod.toString())) {
				return "-2";

			}

			session.setAttribute("ID", user.getID());
			session.setAttribute("LOGINNAME", user.getUserName());
			session.setAttribute("USERIMG", user.getPhoto());
			return "1";

		}

		// 用户注销
		@Override
		public int userWithdraw(HttpServletRequest request) {
			HttpSession session = request.getSession();
			System.out.println("用户" + session.getAttribute("LOGINNAME") + "请求退出");
			session.setAttribute("LOGINNAME", "");
			session.setAttribute("USERIMG", "");
			return 1;
		}

		//验证用户名是否被使用
		@Override
		public String getUser(String clientNo) {
			// TODO Auto-generated method stub
			
			String condition = "userName = '" + clientNo + "'";
			List<User> users = dao.getByCondition(condition);
			if (users.size() == 0) {
				return "true";
			}else{
				return "false";
						}
		}
		
		@Override
		 public String addPerson(String userName,String password,String phoneNumber,String email,String introduce,
		    		String sex,int age){
			User user = new User();
			String id = EntityIDFactory.createId();
			user.setID(id);
			user.setUserName(userName);
			user.setPassword(password);
			user.setPhone(phoneNumber);
			user.setEmail(email);
			user.setIntroduce(introduce);
			user.setSex(sex);
			user.setAge(age);
			
			int result = dao.save(user);
			
			return "1";
		}
}
