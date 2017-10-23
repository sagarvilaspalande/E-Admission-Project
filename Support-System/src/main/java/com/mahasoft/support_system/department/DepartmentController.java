package com.mahasoft.support_system.department;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.util.UriComponentsBuilder;

@Controller
public class DepartmentController {
	
	@Autowired
	DepartmentService departmentService;

	@RequestMapping(value = "/AddDepartment")
	public String departmentPage(Map<String, Object> model){
		model.put("message", "Add Department Page");
		return("Department/AddDepartment");
		
	}
	
	
}
