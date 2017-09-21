package com.cqut.service.WishList;

import java.text.ParseException;
import java.util.Map;

import com.cqut.entity.WishList;


public interface IWishListService {

	int getTotalByCondition(String condition);

	String addWishlist(String houseID, String userID, String name,
			String creatTime) throws ParseException;

	Map<String, Object> getWishlist(String wishlistID, String name,
			String userID);
	
}
