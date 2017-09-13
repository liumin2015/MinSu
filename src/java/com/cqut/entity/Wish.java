package com.cqut.entity;

import java.util.Date;

import com.cqut.util.ID;

/**
 * @author liumin
 * @2017-6-14 
 */
public class Wish {
    @ID
    private String id;
    private String wishhouseID;
    private String wishuserID;
    private Date wishcreatTime;
    private String wishname;
    
    public String getID() {
		return id;
	}
	public void setID(String id) {
		this.id = id;
	}
	public String getWishhouseID() {
		return wishhouseID;
	}
	public void setWishhouseID(String wishhouseID) {
		this.wishhouseID = wishhouseID;
	}
	public String getWishuserID() {
		return wishuserID;
	}
	public void setWishuserID(String wishuserID) {
		this.wishuserID = wishuserID;
	}
	public Date getWishcreatTime() {
		return wishcreatTime;
	}
	public void setWishcreatTime(Date wishcreatTime) {
		this.wishcreatTime = wishcreatTime;
	}
	public String getWishname() {
		return wishname;
	}
	public void setWishname(String wishname) {
		this.wishname = wishname;
	}
	
}
