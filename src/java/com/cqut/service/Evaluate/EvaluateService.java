package com.cqut.service.Evaluate;


import javax.annotation.Resource;
import org.springframework.stereotype.Service;

import  com.cqut.dao.Evaluate.EvaluateDao;
import  com.cqut.entity.Evaluate;

@Service
public class EvaluateService implements IEvaluateService{
	
	@Resource(name="evaluateDao")
	EvaluateDao dao ;

	
}
