package com.mahasoft.support_system.role;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RoleController {

	@RequestMapping(value = "/AddRole")
	public String registerPage(Map<String, Object> model){
		model.put("message", "Add Role Page");
		return("Role/AddRole");
		
	}
}
