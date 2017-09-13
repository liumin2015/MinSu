package com.cqut.service.Facilities;


import javax.annotation.Resource;
import org.springframework.stereotype.Service;

import  com.cqut.dao.Facilities.FacilitiesDao;
import  com.cqut.entity.Facilities;

@Service
public class FacilitiesService implements IFacilitiesService{
	
	@Resource(name="facilitiesDao")
	FacilitiesDao dao ;

	
}
