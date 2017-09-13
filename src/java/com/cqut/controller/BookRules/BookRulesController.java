package com.cqut.controller.BookRules;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cqut.service.BookRules.IBookRulesService;

@Controller
@RequestMapping("/bookRulesController")
public class BookRulesController{
	
	@Resource(name="bookRulesService")
	IBookRulesService service;
}
