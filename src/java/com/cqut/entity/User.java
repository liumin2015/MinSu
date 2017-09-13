package com.cqut.entity;

import java.util.Date;
import com.cqut.util.ID;

public class User{
	
	@ID
	private String  ID;
	private String userName;
	private String password;
	private String orderID;
	private String photo;
	private String mailID;
	private String phone;
	private String address;
	private String email;
	private int age;
	private String sex;
	private String userEvaluateID;
	private String wishID;
	private String introduce;
	private String type;
	
	
	public String getID() {
		return ID;
	}	
	
	public void setID(String ID) {
		this.ID = ID;
	}
	public String getUserName() {
		return userName;
	}	
	
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}	
	
	public void setPassword(String password) {
		this.password = password;
	}
	public String getOrderID() {
		return orderID;
	}	
	
	public void setOrderID(String orderID) {
		this.orderID = orderID;
	}
	public String getPhoto() {
		return photo;
	}	
	
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public String getMailID() {
		return mailID;
	}	
	
	public void setMailID(String mailID) {
		this.mailID = mailID;
	}
	public String getPhone() {
		return phone;
	}	
	
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}	
	
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}	
	
	public void setEmail(String email) {
		this.email = email;
	}
	public int getAge() {
		return age;
	}	
	
	public void setAge(int age) {
		this.age = age;
	}
	public String getSex() {
		return sex;
	}	
	
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getUserEvaluateID() {
		return userEvaluateID;
	}	
	
	public void setUserEvaluateID(String userEvaluateID) {
		this.userEvaluateID = userEvaluateID;
	}
	public String getWishID() {
		return wishID;
	}	
	
	public void setWishID(String wishID) {
		this.wishID = wishID;
	}
	public String getIntroduce() {
		return introduce;
	}	
	
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	public String getType() {
		return type;
	}	
	
	public void setType(String type) {
		this.type = type;
	}
	
	@Override
	public String toString() {
		return   ID  + "\t" +  userName  + "\t" +  password  + "\t" +  orderID  + "\t" +  photo  + "\t" +  mailID  + "\t" +  phone  + "\t" +  address  + "\t" +  email  + "\t" +  age  + "\t" +  sex  + "\t" +  userEvaluateID  + "\t" +  wishID  + "\t" +  introduce  + "\t" +  type  + "\t"  ;
	}
}
