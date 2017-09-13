package com.cqut.controller.Story;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cqut.service.Story.IStoryService;

@Controller
@RequestMapping("/storyController")
public class StoryController{
	
	@Resource(name="storyService")
	IStoryService service;
}
