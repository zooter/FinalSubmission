package com.praxify.hack.template;

public class Patient1 {

	private String firstName;
	private String lastName;
	private String dob;
	private String email;
	private String date;
	private String mobile;
	private String id;
	
	
	public Patient1() {
		// TODO Auto-generated constructor stub
	}
	
	public Patient1(String firstName, String lastName, String dob, String email, String date, String mobile, String id){
		
		this.firstName = firstName;
		this.lastName = lastName;
		this.dob = dob;
		this.email = email;
		this.mobile = mobile;
		this.id = id;
		
	}
	
	
	public String toString(){
		StringBuilder pat = new StringBuilder();
		pat.append(this.firstName).append(" ").
			append(this.lastName).append(" ").
			append(this.dob).append(" ").
			append(this.email).append(" ").
			append(this.mobile).append(" ").
			append(this.id).append(" ");
		
		return pat.toString();
		
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
	
	
}
