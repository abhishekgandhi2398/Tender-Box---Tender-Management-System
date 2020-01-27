package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.model.Quotation;



@Controller
public class QuotationController {
	@Autowired    
	QuotationDao qDao;
	
	
	
	@RequestMapping(value="/quotationapply/{ref}",method=RequestMethod.GET)    
	public String showform(@PathVariable("ref")String ref ,Model m){   
		System.out.println("applying tender for : "+ref);
	    m.addAttribute("command", new Quotation());  
	    m.addAttribute("ref", ref);
	    return "supplier_tender_apply";   
	} 
	
	
	@RequestMapping(value="/suppliertenderapplysave",method = RequestMethod.POST)   
	public String save(@ModelAttribute("Quotation") Quotation quotation){
		System.out.println("inside qoutation controller");
	    qDao.saveQuotation(quotation);    
	    System.out.println("exiting qoutation: ");
	    return "supplier_home";
	}
	
	@RequestMapping("/quotation/{reg}")    
	public String viewquery(@PathVariable("reg")String reg,Model m){ 
		System.out.println("entered quotation controller with reg: "+reg);
	    List<Quotation> list=qDao.getQuotation(reg);    
	    m.addAttribute("list",list);  
	    System.out.println("Exiting quotation controller with : "+list.toString());
	    return "quotation";    
	}
	
}


