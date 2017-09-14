package com.cqut.entity;

import java.util.Date;
import com.cqut.util.ID;

public class House{
	
	@ID
	private String  ID;
	private String houseOwnerID;
	private String introduce;
	private String facilitiesID;
	private String state;
	private String price;
	private String type;
	private String address;
	private int bedNum;
	private int peopleNum;
	private int toiletNum;
	private String houseName;
	private String satisfy;
	private String houseRule;
	private String bookRuleID;
	private String priceRule;
	private String roomType;
	private Date starTime;
	private Date endTime;
	private Date createTime;
	
	
	public String getID() {
		return ID;
	}	
	
	public void setID(String ID) {
		this.ID = ID;
	}
	public String getHouseOwnerID() {
		return houseOwnerID;
	}	
	
	public void setHouseOwnerID(String houseOwnerID) {
		this.houseOwnerID = houseOwnerID;
	}
	public String getIntroduce() {
		return introduce;
	}	
	
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	public String getFacilitiesID() {
		return facilitiesID;
	}	
	
	public void setFacilitiesID(String facilitiesID) {
		this.facilitiesID = facilitiesID;
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
	public String getType() {
		return type;
	}	
	
	public void setType(String type) {
		this.type = type;
	}
	public String getAddress() {
		return address;
	}	
	
	public void setAddress(String address) {
		this.address = address;
	}
	public int getBedNum() {
		return bedNum;
	}	
	
	public void setBedNum(int bedNum) {
		this.bedNum = bedNum;
	}
	public int getPeopleNum() {
		return peopleNum;
	}	
	
	public void setPeopleNum(int peopleNum) {
		this.peopleNum = peopleNum;
	}
	public int getToiletNum() {
		return toiletNum;
	}	
	
	public void setToiletNum(int toiletNum) {
		this.toiletNum = toiletNum;
	}
	public String getHouseName() {
		return houseName;
	}	
	
	public void setHouseName(String houseName) {
		this.houseName = houseName;
	}
	public String getSatisfy() {
		return satisfy;
	}	
	
	public void setSatisfy(String satisfy) {
		this.satisfy = satisfy;
	}
	public String getHouseRule() {
		return houseRule;
	}	
	
	public void setHouseRule(String houseRule) {
		this.houseRule = houseRule;
	}
	public String getBookRuleID() {
		return bookRuleID;
	}	
	
	public void setBookRuleID(String bookRuleID) {
		this.bookRuleID = bookRuleID;
	}
	public String getPriceRule() {
		return priceRule;
	}	
	
	public void setPriceRule(String priceRule) {
		this.priceRule = priceRule;
	}
	public String getRoomType() {
		return roomType;
	}	
	
	public void setRoomType(String roomType) {
		this.roomType = roomType;
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
	public Date getCreateTime() {
		return createTime;
	}	
	
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	
	@Override
	public String toString() {
		return   ID  + "\t" +  houseOwnerID  + "\t" +  introduce  + "\t" +  facilitiesID  + "\t" +  state  + "\t" +  price  + "\t" +  type  + "\t" +  address  + "\t" +  bedNum  + "\t" +  peopleNum  + "\t" +  toiletNum  + "\t" +  houseName  + "\t" +  satisfy  + "\t" +  houseRule  + "\t" +  bookRuleID  + "\t" +  priceRule  + "\t" +  roomType  + "\t" +  starTime  + "\t" +  endTime  + "\t" +  createTime  + "\t"  ;
	}
}
