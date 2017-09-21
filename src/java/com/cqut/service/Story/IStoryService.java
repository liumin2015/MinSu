package com.cqut.service.Story;

import java.util.Map;

import com.cqut.entity.Story;


public interface IStoryService {

	int getTotalByCondition(String condition);

	Map<String, Object> getStory(String storyID, String location);

	String addStory(Story story);
	
}
