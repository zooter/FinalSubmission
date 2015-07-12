package com.praxify.hack.template;

public class Patient {
	
	private Demographics demoGrap;
	private Problems problems;
	private Medication medication;
	private Allergies allergies;
	private Vaccine vaccine;
	private String uhid;
	
	
	public Demographics getDemoGrap() {
		return demoGrap;
	}
	public void setDemoGrap(Demographics demoGrap) {
		this.demoGrap = demoGrap;
	}
	public Problems getProblems() {
		return problems;
	}
	public void setProblems(Problems problems) {
		this.problems = problems;
	}
	public Medication getMedication() {
		return medication;
	}
	public void setMedication(Medication medication) {
		this.medication = medication;
	}
	public Allergies getAllergies() {
		return allergies;
	}
	public void setAllergies(Allergies allergies) {
		this.allergies = allergies;
	}
	public Vaccine getVaccine() {
		return vaccine;
	}
	public void setVaccine(Vaccine vaccine) {
		this.vaccine = vaccine;
	}
	public String getUhid() {
		return uhid;
	}
	public void setUhid(String uhid) {
		this.uhid = uhid;
	}
	
	
	
	

}
