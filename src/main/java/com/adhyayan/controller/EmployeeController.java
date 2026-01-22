package com.adhyayan.controller;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.adhyayan.model.Employee;
import com.adhyayan.servicei.EmployeeServiceI;

@Controller
public class EmployeeController {

   
	
	@Autowired
	EmployeeServiceI es;

   
	@RequestMapping("/")
	public String homePage() {
		return "home";
	}
	
	@RequestMapping("/login")
	public String loginPage() {
		return "login";
	}

	@RequestMapping("/register")
	public String regiPage() {
		return "register";
	}
	
	@RequestMapping("/save")
	public String saveEmployee(@ModelAttribute Employee e) {
		
		System.out.println("In Controller");
		System.out.println(e.getName());
		es.saveEmployee(e);
		return "login";
	}
	
	@RequestMapping("/loginsuccess")
	public String loginsuccess(@RequestParam("name") String nm , @RequestParam("id") int id,
			Model m) {
		
		Employee ep = es.loginCheck(nm, id);
		
		if(nm.equals("admin")&& id==1) {
			
			List<Employee> allEmployee = es.getAllEmployee();
			m.addAttribute("employee", allEmployee);
			return "adminlogin";
			
		} else if(ep!=null) {
			
			System.out.println(ep);
			List<Employee> list = new ArrayList<Employee>();
			list.add(ep);
			m.addAttribute("employee", list);
			return "loginsuccess";
			
		} else {
		
			return "login";
			
		}
	}
	
	@RequestMapping("/delete")
	public String delete(@RequestParam("id")int id,Model m) {
		es.deleteEmployee(id);
		List<Employee> allEmployee = es.getAllEmployee();
		m.addAttribute("employee", allEmployee);
		return "loginsuccess";
	}
	
	@RequestMapping("/edit")
	public String edit(@RequestParam("id") int id , Model m) {
		
		Employee singleEmp = es.getEmployeeById(id);
		System.out.println(singleEmp);
		m.addAttribute("emp", singleEmp);
		return "edit";
	}
	
	@RequestMapping("/update")
	public String update(@ModelAttribute Employee e, Model m) {
		
		es.saveEmployee(e);
		Employee update = es.getEmployeeById(e.getId());
		m.addAttribute("em",update);
		return "studentlogin";
	}
	

}
