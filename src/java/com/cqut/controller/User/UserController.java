package com.cqut.controller.User;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cqut.service.User.IUserService;

@Controller
@RequestMapping("/userController")
public class UserController{
	
	@Resource(name="userService")
	IUserService service;
	
	// 用户登录页面，加入cookie
		@RequestMapping("/userLogin")
		@ResponseBody
		public String employeeLogin(String loginName, String password,
				HttpServletRequest request, HttpServletResponse response)
				throws Exception {
			return service.userLogin(loginName, password, request, response);
		}

		// 用户注销
		@RequestMapping("/userWithdraw")
		@ResponseBody
		public int employeeWithdraw(HttpServletRequest request) {
			return service.userWithdraw(request);

		}
		
		//验证账户是否被使用
		@RequestMapping("/verifyClientNo")
		@ResponseBody
		public String verifyClientNo(String username) throws UnsupportedEncodingException{
			username = URLDecoder.decode(username, "utf-8");
				
			return(service.getUser(username));
		}
		
		@RequestMapping("/addPerson")  
	    @ResponseBody 
	    public String addPersonnel(String userName,String password,String phoneNumber,String email,String introduce,
	    		String sex,String age) throws UnsupportedEncodingException{
			userName = URLDecoder.decode(userName,"utf-8");
			password = URLDecoder.decode(password,"utf-8");
			phoneNumber = URLDecoder.decode(phoneNumber,"utf-8");
			email = URLDecoder.decode(email,"utf-8");
			introduce = URLDecoder.decode(introduce,"utf-8");
			sex = URLDecoder.decode(sex,"utf-8");
			age = URLDecoder.decode(age,"utf-8");
			int age2 = Integer.parseInt(age);
			return service.addPerson(userName,password,phoneNumber,email,introduce,
					sex,age2); 
			
		}
		
}
