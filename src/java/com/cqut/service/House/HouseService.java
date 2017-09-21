package com.cqut.service.House;


import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cqut.dao.SearchDao;
import  com.cqut.dao.House.HouseDao;
import  com.cqut.entity.House;
import com.cqut.util.EntityIDFactory;

@Service
public class HouseService  implements IHouseService{
	
	@Resource(name="houseDao")
	HouseDao dao ;
	
	@Resource(name="searchDao")
	SearchDao searchDao;
	
	@Override
	public String addhouse(House house) {
		// TODO Auto-generated method stub
		String id=EntityIDFactory.createId();
		house.setID(id);
		int result = dao.save(house);
		return result==1?"true":"false";
	}
	
	//获取房源信息
	@Override
	public Map<String, Object> getHouse(String houseID,String location, String startime, String endtime,
			String peopleNum) {
		
		String condition = " 1 = 1 "+" GROUP BY house.ID"+" ORDER BY house.createTime DESC";
		String condition1 = " 1 = 1 ";
		if(houseID != null && houseID !=""){
			condition = " 1 = 1 and house.ID =" + houseID ;
		}
		else if (location != null && location!="" ) {
			condition = " 1 = 1 and house.address like '%" + location + "%'"+" GROUP BY house.ID"+" ORDER BY house.createTime DESC";
		} else if (startime != null && startime !="") {
			condition = " 1 = 1 and house.starTime like '%" + startime + "%'"+" GROUP BY house.ID"+" ORDER BY house.createTime DESC";
		} else if (endtime != null && endtime !="") {
			condition = " 1 = 1 and house.endTime like '%" + endtime + "%'"+" GROUP BY house.ID"+" ORDER BY house.createTime DESC";
		} else if (peopleNum != null && peopleNum !="") {	
			condition = " 1 = 1 and house.peopleNum like '%" + peopleNum + "%'"+" GROUP BY house.ID"+" ORDER BY house.createTime DESC";
		}
		
		String joinEntity = " LEFT JOIN `user` ON house.houseOwnerID = `user`.ID "
				+ " LEFT JOIN image ON house.ID = image.houseID ";
		
		int count = getTotalByCondition(condition1);
/*		String groupField = "house.ID";
		String orderField = "house.createTime DESC";*/
		String[] properties = new String[]{"*"};
/*		String[] foreignEntity = new String[]{};
		List<String> foreingKeySql = null;*/
		List<Map<String, Object>> result = searchDao.searchForeign(properties, "house", joinEntity, null, null, condition);
		/*List<Map<String, Object>> ens = searchDao.searchForeign(properties, "house", joinEntity, foreignEntity, foreingKeySql, condition);*/
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
