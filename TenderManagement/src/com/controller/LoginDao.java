package com.controller;

import org.springframework.jdbc.core.JdbcTemplate;

import com.model.Login;


public class LoginDao 
{

	JdbcTemplate template; 

	public void setTemplate(JdbcTemplate template) {    
	    this.template = template;    
	}
	
	
	public int validateUser(Login login) 
	{
		String 	sql=null;
		if(login.getProfileType().equals("2"))
		{
			//employee
			sql="select count(1) from employee_details where emp_id=? and password=?";
		}
		else 
		{
			//supplier
			sql="select count(1) from company_details where reg_number=? and password=?";
		}
			
		return template.queryForObject(sql, new Object[]{login.getUsername(),login.getPassword()}, Integer.class);
	}
		
}
