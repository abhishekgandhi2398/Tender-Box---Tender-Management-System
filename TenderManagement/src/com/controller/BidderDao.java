package com.controller;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.model.BidderBean;
import com.model.Employee;
import com.model.TenderBean;

public class BidderDao {
	@Autowired
	JdbcTemplate jdbcTemplate; 

	public void setTemplate(JdbcTemplate jdbcTemplate) {    
	    this.jdbcTemplate = jdbcTemplate;    
	}
	
	public List<BidderBean> showAllBidders(String tenderReference) {
		String sql="select * from company_details,bidders_list where company_details.reg_number=bidders_list.reg_number and tender_ref_number="+"'"+tenderReference+"'";
		
		List<BidderBean> bidderList = jdbcTemplate.query(sql, new RowMapper<BidderBean>() {
			
			public BidderBean mapRow(ResultSet rs,int rowNum) throws SQLException {
				BidderBean b =new BidderBean();
				b.setReg_number(rs.getInt("reg_number"));
				b.setCompany_name(rs.getString("company_name"));
				b.setTender_ref_number(rs.getString("tender_ref_number"));
				return b;
			}
		});
		return bidderList;
	}

}
