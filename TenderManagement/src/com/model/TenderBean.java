package com.model;

public class TenderBean {
	private String ref_number,department,description,start_date,end_date;
	private long base_amount;
	public String getRef_number() {
		return ref_number;
	}
	public void setRef_number(String ref_number) {
		this.ref_number = ref_number;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getStart_date() {
		return start_date;
	}
	public void setStart_date(String start_date) {
		this.start_date = start_date;
	}
	public String getEnd_date() {
		return end_date;
	}
	public void setEnd_date(String end_date) {
		this.end_date = end_date;
	}
	public long getBase_amount() {
		return base_amount;
	}
	public void setBase_amount(long base_amount) {
		this.base_amount = base_amount;
	}
	@Override
	public String toString() {
		return "TenderBean [ref_number=" + ref_number + ", department=" + department + ", description=" + description
				+ ", start_date=" + start_date + ", end_date=" + end_date + ", base_amount=" + base_amount + "]";
	}
	
	

}
