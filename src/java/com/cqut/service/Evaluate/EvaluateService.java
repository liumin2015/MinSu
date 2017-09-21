package com.cqut.service.Evaluate;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cqut.dao.SearchDao;
import  com.cqut.dao.Evaluate.EvaluateDao;
import  com.cqut.entity.Evaluate;

@Service
public class EvaluateService implements IEvaluateService{
	
	@Resource(name="evaluateDao")
	EvaluateDao dao ;
	
	@Resource(name="searchDao")
	SearchDao searchDao;

	    //获取评价信息
		@Override
		public Map<String, Object> getEvalute(String houseID) {
			
			String condition = " 1 = 1 "+" ORDER BY evaluateTime DESC";
			String condition1 = " 1 = 1 ";
			if(houseID != null && houseID !=""){
				condition = " 1 = 1 and houseID =" + houseID +" ORDER BY evaluateTime DESC";
			}
			
			String joinEntity = " LEFT JOIN `user` ON evaluate.userID = `user`.ID";
			
			int count = getTotalByCondition(condition1);
			String[] properties = new String[]{"*"};
			List<Map<String, Object>> result = searchDao.searchForeign(properties, "evaluate", joinEntity, null, null, condition);
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("total", count);
			map.put("rows", result);
			return map;
			
		}
		
		@Override
		public int getTotalByCondition(String condition) {
			return dao.getCountByCondition(condition);
		}
	
}
