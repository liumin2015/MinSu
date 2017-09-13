package com.cqut.entity;

import java.util.Date;
import com.cqut.util.ID;

public class Evaluate{
	
	@ID
	private String  ID;
	private String houseID;
	private String userID;
	private String contain;
	private Date evaluateTime;
	
	
	public String getID() {
		return ID;
	}	
	
	public void setID(String ID) {
		this.ID = ID;
	}
	public String getHouseID() {
		return houseID;
	}	
	
	public void setHouseID(String houseID) {
		this.houseID = houseID;
	}
	public String getUserID() {
		return userID;
	}	
	
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getContain() {
		return contain;
	}	
	
	public void setContain(String contain) {
		this.contain = contain;
	}
	public Date getEvaluateTime() {
		return evaluateTime;
	}	
	
	public void setEvaluateTime(Date evaluateTime) {
		this.evaluateTime = evaluateTime;
	}
	
	@Override
	public String toString() {
		return   ID  + "\t" +  houseID  + "\t" +  userID  + "\t" +  contain  + "\t" +  evaluateTime  + "\t"  ;
	}
}
