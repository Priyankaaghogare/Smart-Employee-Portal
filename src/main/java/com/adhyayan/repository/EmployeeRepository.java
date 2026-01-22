package com.adhyayan.repository;

import org.springframework.data.repository.CrudRepository;

import com.adhyayan.model.Employee;
import java.util.List;


public interface EmployeeRepository extends CrudRepository<Employee, Integer> {
	
	public Employee findByNameAndId(String name,int id);

}
