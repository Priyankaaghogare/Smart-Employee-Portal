package com.adhyayan.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.adhyayan.model.Employee;
import com.adhyayan.repository.EmployeeRepository;
import com.adhyayan.servicei.EmployeeServiceI;

@Service
public class EmployeeServiceImpl implements EmployeeServiceI {

  
	
	@Autowired
	EmployeeRepository er;

   

	@Override
	public void saveEmployee(Employee e) {
		System.out.println("In Service");
	    System.out.println(e.getName());
	    er.save(e);
	}

	@Override
	public List<Employee> getAllEmployee() {
	
		return (List<Employee>) er.findAll();
	}

	@Override
	public void deleteEmployee(int id) {
	
	er.deleteById(id);
		
	}

	@Override
	public Employee getEmployeeById(int id) {
		
		return er.findById(id).get();
	}

	@Override
	public Employee loginCheck(String name, int id) {
	
		return er.findByNameAndId(name, id);
	}

}
