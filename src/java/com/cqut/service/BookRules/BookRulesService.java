package com.cqut.service.BookRules;


import javax.annotation.Resource;
import org.springframework.stereotype.Service;

import  com.cqut.dao.BookRules.BookRulesDao;
import  com.cqut.entity.BookRules;

@Service
public class BookRulesService  implements IBookRulesService{
	
	@Resource(name="bookRulesDao")
	BookRulesDao dao ;

	
}
