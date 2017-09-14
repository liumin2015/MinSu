package com.cqut.entity;

import java.util.Date;
import com.cqut.util.ID;

public class Story{
	
	@ID
	private String  ID;
	private String houseID;
	private String userID;
	private String imgID;
	private String title;
	private String content;
	private Date writeTime;
	
	
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
	public String getImgID() {
		return imgID;
	}	
	
	public void setImgID(String imgID) {
		this.imgID = imgID;
	}
	public String getTitle() {
		return title;
	}	
	
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}	
	
	public void setContent(String content) {
		this.content = content;
	}
	public Date getWriteTime() {
		return writeTime;
	}	
	
	public void setWriteTime(Date writeTime) {
		this.writeTime = writeTime;
	}
	
	@Override
	public String toString() {
		return   ID  + "\t" +  houseID  + "\t" +  userID  + "\t" +  imgID  + "\t" +  title  + "\t" +  content  + "\t" +  writeTime  + "\t"  ;
	}
}
