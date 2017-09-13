package com.cqut.service.Image;


import javax.annotation.Resource;
import org.springframework.stereotype.Service;

import  com.cqut.dao.Image.ImageDao;
import  com.cqut.entity.Image;

@Service
public class ImageService implements IImageService{
	
	@Resource(name="imageDao")
	ImageDao dao ;
	
}
