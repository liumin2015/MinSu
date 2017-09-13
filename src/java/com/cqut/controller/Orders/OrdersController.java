package com.cqut.controller.Orders;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cqut.service.Orders.IOrdersService;

@Controller
@RequestMapping("/ordersController")
public class OrdersController{
	
	@Resource(name="ordersService")
	IOrdersService service;
}
