package com.cqut.controller.Mail;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cqut.service.Mail.IMailService;

@Controller
@RequestMapping("/mailController")
public class MailController{
	
	@Resource(name="mailService")
	IMailService service;
}
