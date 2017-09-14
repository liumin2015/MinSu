package com.cqut.service.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public interface IUserService {

	String userLogin(String loginName, String passwrod,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception;

	int userWithdraw(HttpServletRequest request);

	String addPerson(String userName, String password, String phoneNumber,
			String email, String introduce, String sex, int age2);

	String getUser(String clientNo);
	
}
