package com.model;

public class Quotation {
	private int regNumber;
	private String description;
	private int amount;
	private String refNumber;
	public int getRegNumber() {
		return regNumber;
	}
	public void setRegNumber(int regNumber) {
		this.regNumber = regNumber;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public String getRefNumber() {
		return refNumber;
	}
	public void setRefNumber(String refNumber) {
		this.refNumber = refNumber;
	}
	@Override
	public String toString() {
		return "Quotation [regNumber=" + regNumber + ", description=" + description + ", amount=" + amount
				+ ", refNumber=" + refNumber + "]";
	}
	

	
}
