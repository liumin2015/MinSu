package com.cqut.controller.Evaluate;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cqut.service.Evaluate.IEvaluateService;

@Controller
@RequestMapping("/evaluateController")
public class EvaluateController{
	
	@Resource(name="evaluateService")
	IEvaluateService service;
}
