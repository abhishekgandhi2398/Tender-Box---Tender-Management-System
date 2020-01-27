package com.model;

public class BidderBean {
	private String tender_ref_number;
	private int reg_number;
	private String company_name;
	
	public String getTender_ref_number() {
		return tender_ref_number;
	}
	public void setTender_ref_number(String tender_ref_number) {
		this.tender_ref_number = tender_ref_number;
	}
	public int getReg_number() {
		return reg_number;
	}
	public void setReg_number(int reg_number) {
		this.reg_number = reg_number;
	}
	public String getCompany_name() {
		return company_name;
	}
	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}
	@Override
	public String toString() {
		return "BidderBean [tender_ref_number=" + tender_ref_number + ", reg_number=" + reg_number + ", company_name="
				+ company_name + "]";
	}

	

	

}
