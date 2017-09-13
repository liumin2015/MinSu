package com.cqut.controller.WishList;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cqut.service.WishList.IWishListService;

@Controller
@RequestMapping("/wishListController")
public class WishListController{
	
	@Resource(name="wishListService")
	IWishListService service;
}
