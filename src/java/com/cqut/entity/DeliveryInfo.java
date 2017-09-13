package com.cqut.entity;

import java.util.Date;

import com.cqut.util.ID;

/**
 * @author hechangxing
 * @2017-6-14 
 */
public class DeliveryInfo {
    @ID
    private String  diId;		
	private String 	dId;
	private Date	diTime;
	private String	diAdd;
	private int	    diType;
	
	public void setDiId(String diId) {
		this.diId = diId;
	}
	public String getDiId() {
		return diId;
	}
	public String getdId() {
		return dId;
	}
	public void setdId(String dId) {
		this.dId = dId;
	}
	public Date getDiTime() {
		return diTime;
	}
	public void setDiTime(Date diTime) {
		this.diTime = diTime;
	}
	public String getDiAdd() {
		return diAdd;
	}
	public void setDiAdd(String diAdd) {
		this.diAdd = diAdd;
	}
	public int getDiType() {
		return diType;
	}
	public void setDiType(int diType) {
		this.diType = diType;
	}
	
}
