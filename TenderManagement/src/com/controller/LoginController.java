package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.servlet.ModelAndView;

import com.model.Login;

@Controller
public class LoginController 
{

	@Autowired    
	LoginDao logindao;
	
	
	@RequestMapping(value="/login",method=RequestMethod.GET)    
	public String showform(Model m){    
	    m.addAttribute("command", new Login());  
	    return "login";   
	}    
	 
	@RequestMapping(value="/validateUser",method = RequestMethod.POST)    
	public String validateUser(@ModelAttribute("login") Login login,Model m){  
		System.out.println(login);
	    int validate=logindao.validateUser(login);  
	    
	    System.out.println(validate);
	    if(validate==1 && login.getProfileType().equals("2"))
	    {
	    return "employee_home";
	    }
	    else if(validate==1 && login.getProfileType().equals("3"))	
	    {
	    	return "supplier_home";
	    }
	    else if(login.getProfileType().equals("1") && login.getUsername().equals("admin") && login.getPassword().equals("admin"))
	    {
	    	
	    	return "admin_home";
	    	
	    }
	    else 
	    {
	    	m.addAttribute("command", new Login());  
		    return "login";
	    }
		
	    
	}
	    
}

