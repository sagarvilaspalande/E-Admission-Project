package com.mahasoft.support_system.roleAccess;

import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RoleAccessController {

	@Autowired
	RoleAccessService roleAccessService;
	
	@RequestMapping(value = "/RoleAccess")
	public String roleAccessPage(Map<String, Object> model){
		return ("RoleAccess/RoleAccess");
	}
}
