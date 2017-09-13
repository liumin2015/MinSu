package com.cqut.service.WishList;


import javax.annotation.Resource;
import org.springframework.stereotype.Service;

import  com.cqut.dao.WishList.WishListDao;
import  com.cqut.entity.WishList;

@Service
public class WishListService implements IWishListService{
	
	@Resource(name="wishListDao")
	WishListDao dao ;

	
}
