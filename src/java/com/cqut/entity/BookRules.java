package com.cqut.entity;

import java.util.Date;
import com.cqut.util.ID;

public class BookRules{
	
	@ID
	private String  ID;
	private String ruleName;
	private String ruleExplain;
	private String houseID;
	
	
	public String getID() {
		return ID;
	}	
	
	public void setID(String ID) {
		this.ID = ID;
	}
	public String getRuleName() {
		return ruleName;
	}	
	
	public void setRuleName(String ruleName) {
		this.ruleName = ruleName;
	}
	public String getRuleExplain() {
		return ruleExplain;
	}	
	
	public void setRuleExplain(String ruleExplain) {
		this.ruleExplain = ruleExplain;
	}
	public String getHouseID() {
		return houseID;
	}	
	
	public void setHouseID(String houseID) {
		this.houseID = houseID;
	}
	
	@Override
	public String toString() {
		return   ID  + "\t" +  ruleName  + "\t" +  ruleExplain  + "\t" +  houseID  + "\t"  ;
	}
}
