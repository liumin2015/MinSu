package com.cqut.controller.House;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cqut.service.House.IHouseService;

@Controller
@RequestMapping("/houseController")
public class HouseController{
	
	@Resource(name="houseService")
	IHouseService service;
}
