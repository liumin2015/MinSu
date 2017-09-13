package com.cqut.service.House;


import javax.annotation.Resource;
import org.springframework.stereotype.Service;

import  com.cqut.dao.House.HouseDao;
import  com.cqut.entity.House;

@Service
public class HouseService  implements IHouseService{
	
	@Resource(name="houseDao")
	HouseDao dao ;
	
}
