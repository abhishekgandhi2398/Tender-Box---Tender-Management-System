package com.model;

public class Query {
	
	private int queryRef;
	private String subject;
	private String description;
	private String department;
	private String tenderRef;
	public int getQueryRef() {
		return queryRef;
	}
	public void setQueryRef(int queryRef) {
		this.queryRef = queryRef;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getTenderRef() {
		return tenderRef;
	}
	public void setTenderRef(String tenderRef) {
		this.tenderRef = tenderRef;
	}
	@Override
	public String toString() {
		return "Query [queryRef=" + queryRef + ", subject=" + subject + ", description=" + description + ", department="
				+ department + ", tenderRef=" + tenderRef + "]";
	}
	
	

}
