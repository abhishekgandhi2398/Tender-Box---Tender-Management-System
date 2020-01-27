package com.controller;


import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.model.Employee;



public class EmployeeDao {

JdbcTemplate template; 

	public void setTemplate(JdbcTemplate template) {    
	    this.template = template;    
	}
	
	
	public int empsave(Employee e) 
	{
		System.out.println(e.toString());
		String sql="insert into employee_details(name,emp_id,password,dob,emp_dept) values('"+e.getFullname()+"','"+e.getId()+"','"+e.getPassword()+"',"+e.getDate()+",'"+e.getDepartment()+"')";

		System.out.println(" value inserted");
		
		return template.update(sql);
	}
	
	
	public List<Employee> getEmployee(){    
	    return template.query("select * from employee_details",new RowMapper<Employee>(){    
	        public Employee mapRow(ResultSet rs, int row) throws SQLException {    
	            Employee e=new Employee();    
	            e.setFullname(rs.getString("name"));
	            e.setId(rs.getInt("emp_id"));
	            e.setPassword(rs.getString("password"));
	            e.setDate(rs.getString("dob"));
	            e.setDepartment(rs.getString("emp_dept"));
	           
	            System.out.println("inserted");
	            return e;    
	        }    
	    });    
	}    
	
}
