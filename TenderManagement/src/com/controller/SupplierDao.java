package com.controller;


import java.sql.ResultSet;
import java.sql.SQLDataException;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.model.Supplier;



public class SupplierDao
{
	
	JdbcTemplate template;
	
	public void setTemplate(JdbcTemplate template)
	{
		this.template=template;
	}
	
	public int save(Supplier sup) throws SQLDataException
	{
		
		String sql="insert into company_details(company_name,reg_number,reg_address,name_partners,city,state,post_code,pan_tan,est_year,email) values('"+sup.getCompanyName()+"',"+sup.getRegNumber()+",'"+sup.getRegAddress()+"','"+sup.getNamePartners()+"','"+sup.getCity()+"','"+sup.getState()+"',"+sup.getPostCode()+",'"+sup.getPanTan()+"','"+sup.getEstYear()+"','"+sup.getEmail()+"')";
//		String sql="insert into company_details(company_name,reg_number) values('"+sup.getCompanyName()+"',"+sup.getRegNumber()+")";
//		String sql="insert into company_details(est_year)values('"+sup.getEstYear()+"')";
		
	//	System.out.println(sql);
		
		return template.update(sql);
	}

	public List<Supplier> getSupplier(){    
	    return template.query("select * from company_details",new RowMapper<Supplier>(){    
	        public Supplier mapRow(ResultSet rs, int row) throws SQLException {    
	            Supplier sup=new Supplier();    
	            sup.setCompanyName(rs.getString("company_name"));
	            sup.setRegNumber(rs.getLong("reg_number"));
	            sup.setRegAddress(rs.getString("reg_address"));
	            sup.setNamePartners(rs.getString("name_partners"));
	            sup.setCity(rs.getString("city"));
	            sup.setState(rs.getString("state"));
	            sup.setPostCode(rs.getInt("post_code"));
	            sup.setPanTan(rs.getString("pan_tan"));
	            sup.setEstYear(rs.getString("est_year"));
	            sup.setEmail(rs.getString("email"));
	            System.out.println("inside supplier "+ sup.toString());    
	            return sup;    
	        }    
	    }); 
	}
}
