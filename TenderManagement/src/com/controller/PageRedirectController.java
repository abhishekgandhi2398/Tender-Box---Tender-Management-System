package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.model.TenderBean;

@Controller
public class PageRedirectController {
	 @RequestMapping("/adminhome")
	 public String gotoAdminHome() {
		 return "admin_home";
	 }
	 @RequestMapping("/employeehome")
	 public String gotoEmployeeHome() {
		 return "employee_home";
	 }
	 @RequestMapping("/admindashboard")
	 public String gotoAdminDashboard() {
		 return "admin_dashboard";
	 }
	 @RequestMapping("/employeedashboard")
	 public String gotoEmployeeDashboard() {
		 return "employee_dashboard";
	 }
	 @RequestMapping("/supplierdashboard") 
	 public String gotoSupplierDashboard() {
		 return "supplier_dashboard";
	 }
	 @RequestMapping("/home")
	 public String gotoHome() {
		 return "home";
	 }
	 @RequestMapping("/login")
	 public String gotoLogin() {
		 return "login";
	 }

	 @RequestMapping("/employeeregister")
	 public String gotoEmployeeRegister() {
		 return "employee_register";
	 }
	/*@RequestMapping("/createtender")
	public String gotoCreateTender() {
		return "create_tender";
	}*/
/*	 */  
	 @RequestMapping("/supplierhome") 
	 public String gotoSupplierHome() {
		 return "supplier_home";
	 }
	
	 @Autowired
	 TenderDao tdao;
	 @RequestMapping("/suppliertenderlist")
	 public String gotoSupplierTenderList(Model m) {
		
		 List<TenderBean> list=tdao.showAllTenders();    
	        m.addAttribute("list",list);  
		 return "supplier_tender_list";
	 }
	 
	 @RequestMapping("/aboutus")
	 public String gotoAboutUs() {
		 return "about_us";
	 }


}
