package com.praxify.hack.template;

import java.util.List;

public class Allergies {
	
	private String allergyName;
	private String reaction;
	private String type;
	private String firstObservedDate;
	
	public String getAllergyName() {
		return allergyName;
	}
	public void setAllergyName(String allergyName) {
		this.allergyName = allergyName;
	}
	public String getFirstObservedDate() {
		return firstObservedDate;
	}
	public void setFirstObservedDate(String firstObservedDate) {
		this.firstObservedDate = firstObservedDate;
	}
	 
	public String getReaction() {
		return reaction;
	}
	public void setReaction(String reaction) {
		this.reaction = reaction;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
}
