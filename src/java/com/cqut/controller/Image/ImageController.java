package com.cqut.controller.Image;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cqut.service.Image.IImageService;

@Controller
@RequestMapping("/imageController")
public class ImageController{
	
	@Resource(name="imageService")
	IImageService service;
}
