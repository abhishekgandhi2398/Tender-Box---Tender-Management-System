package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.model.Employee;



@Controller
public class EmployeeController {
	@Autowired    
	EmployeeDao dao;    
    
  
@RequestMapping(value="/employeeregister",method=RequestMethod.GET)    
public String showform(Model m){    
    m.addAttribute("command", new Employee());  
    return "employee_register";   
}    
 
@RequestMapping(value="/register",method = RequestMethod.POST)    
public String empsave(@ModelAttribute("employee") Employee employee){    
    dao.empsave(employee);    
    return "admin_home";
}

@RequestMapping("/employeelist")    
public String viewemployee(Model m){    
    List<Employee> list=dao.getEmployee();    
    m.addAttribute("list",list);  
    return "employee_list";    
}    


}
