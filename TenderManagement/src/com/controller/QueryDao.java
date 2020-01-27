package com.controller;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.model.Query;
//import com.model.TenderBean;

public class QueryDao {

	JdbcTemplate template; 

	public void setTemplate(JdbcTemplate template) {    
	    this.template = template;    
	}
	
	public int saveQuery(Query q) 
	{
		System.out.println(q.toString());
		String sql="insert into query_details(query_ref,subject,description,department,tender_ref) values("+q.getQueryRef()+",'"+q.getSubject()+"','"+q.getDescription()+"','"+q.getDepartment()+"','"+q.getTenderRef()+"')";

		System.out.println(" value inserted");
		
		return template.update(sql);
	}
	
	public List<Query> getQuery(){    
	    return template.query("select * from query_details",new RowMapper<Query>(){    
	        public Query mapRow(ResultSet rs, int row) throws SQLException {    
	        	Query q=new Query();    
	            q.setQueryRef(rs.getInt("query_ref"));    
	            q.setSubject(rs.getString("subject"));    
	            q.setDescription(rs.getString("description"));   
	            q.setDepartment(rs.getString("department"));
	            q.setTenderRef(rs.getString("tender_ref"));
	            System.out.println("inserted11");
	            return q;    
	        }    
	    });   
	}    
	
}
