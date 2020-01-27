package com.model;


public class Supplier 
{
	private String companyName;
	private String regAddress;
	private String namePartners;
	private String state;
	private String city;
	private String email;
	private String panTan;
	private long regNumber;
	private int postCode;
	private String estYear;

	
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public String getRegAddress() {
		return regAddress;
	}
	public void setRegAddress(String regAddress) {
		this.regAddress = regAddress;
	}
	public String getNamePartners() {
		return namePartners;
	}
	public void setNamePartners(String namePartners) {
		this.namePartners = namePartners;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPanTan() {
		return panTan;
	}
	public void setPanTan(String panTan) {
		this.panTan = panTan;
	}
	public long getRegNumber() {
		return regNumber;
	}
	public void setRegNumber(long regNumber) {
		this.regNumber = regNumber;
	}
	public int getPostCode() {
		return postCode;
	}
	public void setPostCode(int postCode) {
		this.postCode = postCode;
	}
	public String getEstYear() {
		return estYear;
	}
	public void setEstYear(String estYear) {
		this.estYear = estYear;
	}
	@Override
	public String toString() {
		return "Supplier [companyName=" + companyName + ", regAddress=" + regAddress + ", namePartners=" + namePartners
				+ ", state=" + state + ", city=" + city + ", email=" + email + ", panTan=" + panTan + ", regNumber="
				+ regNumber + ", postCode=" + postCode + ", estYear=" + estYear + "]";
	}
		
}
