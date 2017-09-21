package com.cqut.controller.Evaluate;

import java.util.Map;

import javax.annotation.Resource;

import net.sf.json.JSONObject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cqut.service.Evaluate.IEvaluateService;

@Controller
@RequestMapping("/evaluateController")
public class EvaluateController{
	
	@Resource(name="evaluateService")
	IEvaluateService service;
	
	//根据条件查询房源信息
		@RequestMapping("/getEvalute")
		@ResponseBody
		public String getEvalute(String houseID){
	
			Map<String, Object> result = service.getEvalute(houseID);
			JSONObject s = JSONObject.fromObject(result);
			/*System.out.println(s);*/
			return s.toString();
		}
}
