package com.cqut.entity;

import java.util.Date;
import com.cqut.util.ID;

public class Mail{
	
	@ID
	private String  ID;
	private Date mailTime;
	private String userID;
	private String container;
	
	
	public String getID() {
		return ID;
	}	
	
	public void setID(String ID) {
		this.ID = ID;
	}
	public Date getMailTime() {
		return mailTime;
	}	
	
	public void setMailTime(Date mailTime) {
		this.mailTime = mailTime;
	}
	public String getUserID() {
		return userID;
	}	
	
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getContainer() {
		return container;
	}	
	
	public void setContainer(String container) {
		this.container = container;
	}
	
	@Override
	public String toString() {
		return   ID  + "\t" +  mailTime  + "\t" +  userID  + "\t" +  container  + "\t"  ;
	}
}
