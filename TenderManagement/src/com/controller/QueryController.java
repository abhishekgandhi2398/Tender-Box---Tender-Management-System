/**
 * 
 */
package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.model.Query;
//import com.model.Tender;


/**
 * @author hp
 *
 */
@Controller
public class QueryController {
	@Autowired
	
	QueryDao querydao;
	
	@RequestMapping(value="/queryform",method=RequestMethod.GET)    
	public String showform(Model m){    
	    m.addAttribute("command", new Query());  
	    return "queryform";   
	}    
	
	
	  @RequestMapping(value="/submitquery",method = RequestMethod.POST) public
	  String saveQuery(@ModelAttribute("query") Query query){
	  querydao.saveQuery(query); return "supplier_home"; }
	
	@RequestMapping("/viewquery")    
	public String viewquery(Model m){    
	    List<Query> list=querydao.getQuery();    
	    m.addAttribute("list",list);  
	    return "viewquery";    
	}    
	
}
