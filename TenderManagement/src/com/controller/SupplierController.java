package com.controller;

import java.sql.SQLDataException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.model.Supplier;

@Controller
public class SupplierController 
{

	@Autowired
	SupplierDao supplierDao;
	
	
	  /*It displays a form to input data, here "command" is a reserved request attribute  
     *which is used to display object data into form  
     */    
    @RequestMapping("/supplyregister")    
    public String showform(Model m){    
    //	System.out.println("**************");
        m.addAttribute("command", new Supplier());  
        return "supply_register";   
    }  
    
	@RequestMapping(value="/supplierSave",method = RequestMethod.POST)    
    public String save(@ModelAttribute("supplier") Supplier supplier) throws SQLDataException{ 
		supplierDao.save(supplier);    
        return "home";//will redirect to viewemp request mapping    
    } 
	
   
    /* It provides list of employees in model object */    
    @RequestMapping("/supplylist")    
    public String viewemp(Model m){   
        List<Supplier> list1=supplierDao.getSupplier();    
        m.addAttribute("list",list1); 
        System.out.println("from supplier controller redirecting to sup dao");
        return "supply_list";    
    }   
    
}
