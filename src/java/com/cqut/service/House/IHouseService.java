package com.cqut.service.House;

import java.util.Date;
import java.util.List;
import java.util.Map;

import com.cqut.entity.House;


public interface IHouseService {
	public String addhouse(House house);

	int getTotalByCondition(String condition);

	Map<String, Object> getHouse(String houseID, String location,
			String startime, String endtime, String peopleNum);
}
