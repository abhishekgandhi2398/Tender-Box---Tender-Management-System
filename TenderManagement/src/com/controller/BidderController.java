package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.model.BidderBean;
import com.model.Employee;
import com.model.TenderBean;

@Controller
public class BidderController {
	@Autowired
	BidderDao bdao;
	
	@RequestMapping(value="/bidderslist/{ref}")
	public String gotoBidderList(@PathVariable("ref")String ref,Model m) {
		System.out.println("enterd bidder controller with ref : "+ref);
		 List<BidderBean> bidderList=bdao.showAllBidders(ref);
		    m.addAttribute("bidderList",bidderList);  
		    System.out.println("exiting bidder controller. passing list: "+bidderList.toString());   
		return "bidders_list";
	}
	
	

}
