package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.model.TenderBean;

@Controller
public class TenderController {
	@Autowired
	TenderDao tenderDao;
	
	@RequestMapping(value="/createtender",method=RequestMethod.GET)    
	public String showform(Model m){    
	    m.addAttribute("command", new TenderBean());  
	    return "create_tender";   
	}  
	    
	@RequestMapping(value="/save",method = RequestMethod.POST)    
	public String save(@ModelAttribute("tender") TenderBean tender){    
	    tenderDao.save(tender);    
	    return "employee_home";
	}
	
	 @RequestMapping(value= "/tenderslist",method = RequestMethod.GET)    
	    public String showTenders(Model m){    
		 	System.out.println("inside tender controller");
	        List<TenderBean> list=tenderDao.showAllTenders();    
	        m.addAttribute("list",list);  
	        System.out.println("list in tender controller "+list.toString());
	        return "tenders_list";    
	 }
		@RequestMapping("/tenderdetail/{reg}")    
		public String gotoTenderDetail(@PathVariable("reg")String reg,Model m){    
			System.out.println("inside tender detail controller with ref "+reg);
			List<TenderBean> list=tenderDao.getTender(reg);    
		    m.addAttribute("list",list);  
		    System.out.println("list in tender detail controller "+list.toString());
		    return "tender_detail";    
		}

	 
}
