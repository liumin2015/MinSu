package com.cqut.entity;

import java.util.Date;
import com.cqut.util.ID;
public class CustomArt{
	//一般情况下，鼠标放在这里直接可以引入，直接引入的，可能是编译环境
	@ID
	private String  ID;
	private String Name;
	private String Style;
	private String Apartment;
	private String DesignersID;
	private String userID;
	private double Price;
	private String FacePicID;
	private String PlanePicID;
	private Date AddedTime;
	private int Status;
	
	
	public String getID() {
		return ID;
	}	
	
	public void setID(String ID) {
		this.ID = ID;
	}
	public String getName() {
		return Name;
	}	
	
	public void setName(String Name) {
		this.Name = Name;
	}
	public String getStyle() {
		return Style;
	}	
	
	public void setStyle(String Style) {
		this.Style = Style;
	}
	public String getApartment() {
		return Apartment;
	}	
	
	public void setApartment(String Apartment) {
		this.Apartment = Apartment;
	}
	public String getDesignersID() {
		return DesignersID;
	}	
	
	public void setDesignersID(String DesignersID) {
		this.DesignersID = DesignersID;
	}
	public String getUserID() {
		return userID;
	}	
	
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public double getPrice() {
		return Price;
	}	
	
	public void setPrice(double Price) {
		this.Price = Price;
	}
	public String getFacePicID() {
		return FacePicID;
	}	
	
	public void setFacePicID(String FacePicID) {
		this.FacePicID = FacePicID;
	}
	public String getPlanePicID() {
		return PlanePicID;
	}	
	
	public void setPlanePicID(String PlanePicID) {
		this.PlanePicID = PlanePicID;
	}
	public Date getAddedTime() {
		return AddedTime;
	}	
	
	public void setAddedTime(Date AddedTime) {
		this.AddedTime = AddedTime;
	}
	public int getStatus() {
		return Status;
	}	
	
	public void setStatus(int Status) {
		this.Status = Status;
	}
	
	@Override
	public String toString() {
		return   ID  + "\t" +  Name  + "\t" +  Style  + "\t" +  Apartment  + "\t" +  DesignersID  + "\t" +  userID  + "\t" +  Price  + "\t" +  FacePicID  + "\t" +  PlanePicID  + "\t" +  AddedTime  + "\t" +  Status  + "\t"  ;
	}
}
