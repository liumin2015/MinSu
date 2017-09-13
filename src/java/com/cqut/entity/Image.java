package com.cqut.entity;

import java.util.Date;
import com.cqut.util.ID;

public class Image{
	
	@ID
	private String  ID;
	private String houseID;
	private String storyID;
	private String name;
	
	
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
	public String getStoryID() {
		return storyID;
	}	
	
	public void setStoryID(String storyID) {
		this.storyID = storyID;
	}
	public String getName() {
		return name;
	}	
	
	public void setName(String name) {
		this.name = name;
	}
	
	@Override
	public String toString() {
		return   ID  + "\t" +  houseID  + "\t" +  storyID  + "\t" +  name  + "\t"  ;
	}
}
