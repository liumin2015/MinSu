package com.cqut.service.Mail;


import javax.annotation.Resource;
import org.springframework.stereotype.Service;

import  com.cqut.dao.Mail.MailDao;
import  com.cqut.entity.Mail;

@Service
public class MailService implements IMailService{
	
	@Resource(name="mailDao")
	MailDao dao ;
	
}
