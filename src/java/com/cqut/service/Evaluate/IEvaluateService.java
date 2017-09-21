package com.cqut.service.Evaluate;

import java.util.Map;


public interface IEvaluateService {

	int getTotalByCondition(String condition);

	Map<String, Object> getEvalute(String houseID);
	
}
