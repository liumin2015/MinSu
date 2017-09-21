package com.cqut.service.Orders;

import java.text.ParseException;
import java.util.Map;

import com.cqut.entity.Orders;


public interface IOrdersService {

	String addOrders(Orders orders);


	int getTotalByCondition(String condition);


	String UpdateOrders(String ordersID, String orderState, String price);

	Map<String, Object> getOrder(String userID, String orderID);


	String pay(String orderID, String price, String houseName, String path);
	
}
