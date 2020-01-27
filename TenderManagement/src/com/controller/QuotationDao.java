package com.controller;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.model.Quotation;



public class QuotationDao {
	JdbcTemplate template; 

	public void setTemplate(JdbcTemplate template) {    
	    this.template = template;    
	}
	
	public int saveQuotation(Quotation q) 
	{
		System.out.println(q.toString());
		String sql1="insert into supplier_tender_details(ref_number,reg_number,description,amount) values('"+q.getRefNumber()+"',"+q.getRegNumber()+",'"+q.getDescription()+"',"+q.getAmount()+")";
		//System.out.println(" value inserted in supplier_tender_details list");
		String sql2="insert into bidders_list(tender_ref_number,reg_number) values('"+q.getRefNumber()+"'"+","+q.getRegNumber()+")";
		//System.out.println(" value inserted in bidder list");
		System.out.println("quotation query : "+sql1);
	    template.update(sql1);
	    return template.update(sql2);
	}
	
	public List<Quotation> getQuotation(String reg){    
	    return template.query("select * from supplier_tender_details where reg_number='"+reg+"'",new RowMapper<Quotation>(){    
	        public Quotation mapRow(ResultSet rs, int row) throws SQLException {    
	        	Quotation qo=new Quotation();    
	            qo.setRegNumber(rs.getInt("reg_number"));    
	            qo.setDescription(rs.getString("description")); 
	            qo.setAmount(rs.getInt("amount"));
	            return qo;    
	        }    
	    });   
	}  
	
	/*
	 * public List<Quotation> getTender(){ return
	 * template.query("select * from tender_details",new RowMapper<Tender>(){ public
	 * Tender mapRow(ResultSet rs, int row) throws SQLException { Tender p=new
	 * Tender(); p.setRefNumber(rs.getString("ref_number"));
	 * p.setItemNumber(rs.getInt("item_number"));
	 * p.setDescription(rs.getString("description"));
	 * p.setBaseAmount(rs.getInt("base_amount"));
	 * p.setStartDate(rs.getString("start_date"));
	 * p.setEndDate(rs.getString("end_date"));
	 * p.setDepartment(rs.getString("department"));
	 * System.out.println("inserted11"); return p; } }); }
	 */
}
