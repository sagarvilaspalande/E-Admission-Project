package com.mahasoft.support_system.department;

import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DepartmentRestController {

	@Autowired
	DepartmentService departmentService;

	@RequestMapping(value = "/GetAllDepartments", method=RequestMethod.POST)
	public List<Department> GetAllDepartments(){
		return departmentService.getAllDepartments();
	}

	@RequestMapping(value = "/AddDepartment", method=RequestMethod.POST)
	public List<Department> AddDepartment(@RequestBody Department department){		
		department.setStatus("A");
		department.setBrCode("1");
		department.setCreatedDate(new Date());
		departmentService.addDepartment(department);
		return departmentService.getAllDepartments();
	}

	@RequestMapping(value = "/UpdateDepartment", method=RequestMethod.POST)
	public List<Department> UpdateDepartment(@RequestBody Department department){		
		department.setUpdatedDate(new Date());
		departmentService.updateDepartment(department);
		return departmentService.getAllDepartments();
	}

	@RequestMapping(value = "/DeleteDepartment", method=RequestMethod.POST)
	public List<Department> DeleteDepartment(@RequestBody Department department){
		departmentService.deleteDepartment(department);
		return departmentService.getAllDepartments();
	}
}
