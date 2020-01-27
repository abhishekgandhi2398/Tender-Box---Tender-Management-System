package com.controller;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.model.TenderBean;

public class TenderDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	public List<TenderBean> showAllTenders() {
		String sql="select * from tender_details";
		List<TenderBean> tenderList = jdbcTemplate.query(sql, new RowMapper<TenderBean>() {
			
			public TenderBean mapRow(ResultSet rs,int rowNum) throws SQLException {
				TenderBean t =new TenderBean();
				t.setRef_number(rs.getString("ref_number"));
				t.setDepartment(rs.getString("department"));
				t.setDescription(rs.getString("description"));
				t.setBase_amount(rs.getLong("base_amount"));
				t.setStart_date(rs.getString("start_date"));
				t.setEnd_date(rs.getString("end_date"));
				System.out.println(t.toString());
				
				return t;
			}
		});
		return tenderList;
	}
	
	public int save(TenderBean p) 
	{
		System.out.println(p.toString());
		String sql="insert into tender_details(ref_number,description,base_amount,start_date,end_date,department) values('"+p.getRef_number()+"','"+p.getDescription()+"',"+p.getBase_amount()+",'"+p.getStart_date()+"','"+p.getEnd_date()+"','"+p.getDepartment()+"')";

		System.out.println(" value inserted");
		
		return jdbcTemplate.update(sql);
	}
	
	public List<TenderBean> getTender(String reg) {
		String sql="select * from tender_details where ref_number='"+reg+"'";
		System.out.println("sql in tender Detail "+sql);
		List<TenderBean> tenderList = jdbcTemplate.query(sql, new RowMapper<TenderBean>() {
			
			public TenderBean mapRow(ResultSet rs,int rowNum) throws SQLException {
				TenderBean t =new TenderBean();
				t.setRef_number(rs.getString("ref_number"));
				t.setDepartment(rs.getString("department"));
				t.setDescription(rs.getString("description"));
				t.setBase_amount(rs.getLong("base_amount"));
				t.setStart_date(rs.getString("start_date"));
				t.setEnd_date(rs.getString("end_date"));
				System.out.println("tender details of : "+t.toString());
				
				return t;
			}
		});
		return tenderList;
		}
	}
	
