package com.adhyayan.servicei;

import java.util.List;

import com.adhyayan.model.Employee;

public interface EmployeeServiceI {
	
	// Abstract Method
	
	public void saveEmployee(Employee e);
	
	public List<Employee> getAllEmployee();
	
	public void deleteEmployee(int id);
	
	public Employee getEmployeeById(int id);
	
	public Employee loginCheck(String name,int id);

}
