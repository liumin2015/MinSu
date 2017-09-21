package com.cqut.controller.WishList;

import java.net.URLDecoder;
import java.text.ParseException;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cqut.entity.House;
import com.cqut.entity.WishList;
import com.cqut.service.WishList.IWishListService;

@Controller
@RequestMapping("/wishListController")
public class WishListController{
	
	@Resource(name="wishListService")
	IWishListService service;
	
	 //新增心愿的单
	 @RequestMapping("/addWishlist")
	 @ResponseBody
	 public String addWishlist(String houseID,String userID,String name,String creatTime,
			 HttpServletRequest request, HttpServletResponse response) throws ParseException{
		String result = service.addWishlist(houseID,userID,name,creatTime);
		return  result;
	 }
	 
	//获取心愿单
		@RequestMapping("/getWishlist")
		@ResponseBody
		public String getWishlist(String wishlistID,String name,String userID){
			
			Map<String, Object> result = service.getWishlist(wishlistID,name,userID);
			JSONObject s = JSONObject.fromObject(result);
			System.out.println(s);
			return s.toString();
		}
}
