package com.cqut.controller.Facilities;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cqut.service.Facilities.IFacilitiesService;

@Controller
@RequestMapping("/facilitiesController")
public class FacilitiesController{
	
	@Resource(name="facilitiesService")
	IFacilitiesService service;
}
