package com.cqut.service.Story;


import javax.annotation.Resource;
import org.springframework.stereotype.Service;

import  com.cqut.dao.Story.StoryDao;
import  com.cqut.entity.Story;

@Service
public class StoryService  implements IStoryService{
	
	@Resource(name="storyDao")
	StoryDao dao ;

	
}
