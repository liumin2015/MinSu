package com.cqut.dao;

import java.util.Set;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface TableCreatorDao {
	public void createTable(@Param("tableName") String tableName,
			@Param("fieldSqls") Set<String> fieldSqls);

	public String existsTable(@Param("tableName") String tableName);
}
