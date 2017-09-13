package com.cqut.entity;

import java.util.Date;
import com.cqut.util.ID;

public class Orders{
	
	@ID
	private String  ID;
	private Date orderTime;
	private Date starTime;
	private Date endTime;
	private String userID;
	private String houseID;
	private String state;
	private String price;
	private String orderBookRuleID;
	private String orderPriceRule;
	
	
	public String getID() {
		return ID;
	}	
	
	public void setID(String ID) {
		this.ID = ID;
	}
	public Date getOrderTime() {
		return orderTime;
	}	
	
	public void setOrderTime(Date orderTime) {
		this.orderTime = orderTime;
	}
	public Date getStarTime() {
		return starTime;
	}	
	
	public void setStarTime(Date starTime) {
		this.starTime = starTime;
	}
	public Date getEndTime() {
		return endTime;
	}	
	
	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}
	public String getUserID() {
		return userID;
	}	
	
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getHouseID() {
		return houseID;
	}	
	
	public void setHouseID(String houseID) {
		this.houseID = houseID;
	}
	public String getState() {
		return state;
	}	
	
	public void setState(String state) {
		this.state = state;
	}
	public String getPrice() {
		return price;
	}	
	
	public void setPrice(String price) {
		this.price = price;
	}
	public String getOrderBookRuleID() {
		return orderBookRuleID;
	}	
	
	public void setOrderBookRuleID(String orderBookRuleID) {
		this.orderBookRuleID = orderBookRuleID;
	}
	public String getOrderPriceRule() {
		return orderPriceRule;
	}	
	
	public void setOrderPriceRule(String orderPriceRule) {
		this.orderPriceRule = orderPriceRule;
	}
	
	@Override
	public String toString() {
		return   ID  + "\t" +  orderTime  + "\t" +  starTime  + "\t" +  endTime  + "\t" +  userID  + "\t" +  houseID  + "\t" +  state  + "\t" +  price  + "\t" +  orderBookRuleID  + "\t" +  orderPriceRule  + "\t"  ;
	}
}
