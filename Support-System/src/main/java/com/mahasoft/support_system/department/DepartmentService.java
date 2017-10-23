package com.mahasoft.support_system.department;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DepartmentService {

	@Autowired
	DepartmentRepository departmentRepository;
	
	public List<Department> getAllDepartments(){		
		return (List<Department>) departmentRepository.findAll();
	}
	
	public void addDepartment(Department department) {
		departmentRepository.save(department);
	}
	
	public void updateDepartment(Department department) {
		departmentRepository.save(department);
	}
	
	public void deleteDepartment(Department department) {		
		departmentRepository.delete(department);
	}
}
