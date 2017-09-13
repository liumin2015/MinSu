package com.cqut.entity;

import java.util.Date;
import com.cqut.util.ID;

public class Facilities{
	
	@ID
	private String  ID;
	private String houseID;
	private String imgName;
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
	public String getImgName() {
		return imgName;
	}	
	
	public void setImgName(String imgName) {
		this.imgName = imgName;
	}
	public String getName() {
		return name;
	}	
	
	public void setName(String name) {
		this.name = name;
	}
	
	@Override
	public String toString() {
		return   ID  + "\t" +  houseID  + "\t" +  imgName  + "\t" +  name  + "\t"  ;
	}
}
