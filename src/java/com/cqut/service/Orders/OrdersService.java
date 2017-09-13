package com.cqut.service.Orders;


import javax.annotation.Resource;
import org.springframework.stereotype.Service;

import  com.cqut.dao.Orders.OrdersDao;
import  com.cqut.entity.Orders;

@Service
public class OrdersService implements IOrdersService{
	
	@Resource(name="ordersDao")
	OrdersDao dao ;

	
}
