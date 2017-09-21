package com.cqut.service.Story;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cqut.dao.SearchDao;
import  com.cqut.dao.Story.StoryDao;
import com.cqut.entity.House;
import  com.cqut.entity.Story;
import com.cqut.util.EntityIDFactory;

@Service
public class StoryService  implements IStoryService{
	
	@Resource(name="storyDao")
	StoryDao dao ;
	
	@Resource(name="searchDao")
	SearchDao searchDao;

	@Override
	public int getTotalByCondition(String condition) {
		return dao.getCountByCondition(condition);
	}
	
	@Override
	public String addStory(Story story) {
		// TODO Auto-generated method stub
		String id=EntityIDFactory.createId();
		story.setID(id);
		int result = dao.save(story);
		return result==1?"true":"false";
	}
	
	@Override
	public Map<String, Object> getStory(String storyID,String location) {
		
		String condition = " 1 = 1 "+" GROUP BY story.ID"+" ORDER BY story.writeTime DESC";
		String condition1 = " 1 = 1 ";
		if(storyID != null && storyID !=""){
			condition = " 1 = 1 and story.ID =" + storyID+" ORDER BY story.writeTime DESC"; ;
		}
		else if (location != null && location!="" ) {
			condition = " 1 = 1 and house.address like '%" + location + "%'"+" GROUP BY story.ID"+" ORDER BY story.writeTime DESC";
		}
		
		String joinEntity = " LEFT JOIN `user` ON story.userID = `user`.ID "
				+ " LEFT JOIN image ON story.ID = image.storyID "
				+ " LEFT JOIN house ON story.houseID = house.ID ";
		
		int count = getTotalByCondition(condition1);
		String[] properties = new String[]{"house.ID",
			 "house.address as houseaddress",
			 "house.bedNum",
			"house.bookRuleID",
			"house.createTime as housecreatTime",
			"house.endTime as houselastTime",
			"house.starTime as housestartTime",
			"house.facilitiesID",
			"house.houseName",
			"house.houseOwnerID",
			"house.houseRule",
			"house.introduce",
			"house.peopleNum",
			"house.price",
			"house.priceRule",
			"house.roomType",
			"house.satisfy,house.state,house.toiletNum",
			"`user`.address as useraddress",
			"`user`.age",
			"`user`.email",
			"`user`.ID",
			"`user`.introduce as userind",
			"`user`.photo",
			"`user`.userName",
			"image.`name`",
			"story.content as storyInd",
			"story.title",
			"story.writeTime as storycreatTime"};
		List<Map<String, Object>> result = searchDao.searchForeign(properties, "story", joinEntity, null, null, condition);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("total", count);
		map.put("rows", result);
		return map;
		
	}
	
	
}
