package com.cqut.entity;

import java.util.Date;
import com.cqut.util.ID;

public class WishList{
	
	@ID
	private String  ID;
	private Date creatTime;
	private String userID;
	private String houseID;
	private String name;
	
	
	public String getID() {
		return ID;
	}	
	
	public void setID(String ID) {
		this.ID = ID;
	}
	public Date getCreatTime() {
		return creatTime;
	}	
	
	public void setCreatTime(Date creatTime) {
		this.creatTime = creatTime;
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
	public String getName() {
		return name;
	}	
	
	public void setName(String name) {
		this.name = name;
	}
	
	@Override
	public String toString() {
		return   ID  + "\t" +  creatTime  + "\t" +  userID  + "\t" +  houseID  + "\t" +  name  + "\t"  ;
	}
}
