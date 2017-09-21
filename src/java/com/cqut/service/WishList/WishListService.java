package com.cqut.service.WishList;


import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import bsh.ParseException;

import com.cqut.dao.SearchDao;
import  com.cqut.dao.WishList.WishListDao;
import com.cqut.entity.House;
import  com.cqut.entity.WishList;
import com.cqut.util.EntityIDFactory;

@Service
public class WishListService implements IWishListService{
	
	@Resource(name="wishListDao")
	WishListDao dao ;

	@Resource(name="searchDao")
	SearchDao searchDao;
	
	//新增心愿单
	@Override
	public String addWishlist(String houseID,String userID,String name,String creatTime) throws java.text.ParseException{
		// TODO Auto-generated method stub
		String id=EntityIDFactory.createId();
		WishList wishList = new WishList();
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd"); 
		Date date=new Date();
		date = sdf.parse(creatTime);  

		wishList.setCreatTime(date);
		wishList.setHouseID(houseID);
		wishList.setID(id);
		wishList.setName(name);
		wishList.setUserID(userID);
		int result = dao.save(wishList);
		return result==1?"true":"false";
	}
	
	//获取房源信息
		@Override
		public Map<String, Object> getWishlist(String wishlistID,String name,String userID) {
			
			String condition = " 1 = 1 "+" GROUP BY wishlist.houseID"+" ORDER BY wishlist.creatTime DESC";
			String condition1 = " 1 = 1 ";
			if(name != null && name !=""){
				condition = " 1 = 1 and  wishlist.`name`=" + name+" GROUP BY wishlist.houseID"+" ORDER BY wishlist.creatTime DESC";
			}else if(userID != null && userID !=""){
				condition = " 1 = 1 and  wishlist.userID=" + userID+" GROUP BY wishlist.`name`"+" ORDER BY wishlist.creatTime DESC"; 
			}
			
			String joinEntity = " LEFT JOIN `user` ON wishlist.userID = `user`.ID"+
                                " LEFT JOIN house ON wishlist.houseID = house.ID"+
					            " LEFT JOIN image ON wishlist.houseID = image.houseID";
			
			int count = getTotalByCondition(condition1);
			String[] properties = new String[]{"image.`name` as houseimg",
            "wishlist.`name`",
            "wishlist.ID as wishID",
            "house.price as houseprice",
            "house.address as houseads",
            "house.type as housetype",
            "house.satisfy",
            "wishlist.houseID",
            "house.roomType",
            "wishlist.ID as wishlistID",
            "wishlist.creatTime as wlWriteTime"};
			List<Map<String, Object>> result = searchDao.searchForeign(properties, "wishlist", joinEntity, null, null, condition);
		
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("total", count);
			map.put("rows", result);
			return map;
			
		}
		
		@Override
		public int getTotalByCondition(String condition) {
			return dao.getCountByCondition(condition);
		}
	
}
