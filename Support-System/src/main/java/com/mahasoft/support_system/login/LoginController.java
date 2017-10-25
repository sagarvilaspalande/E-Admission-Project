package com.mahasoft.support_system.login;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.mahasoft.support_system.role.Role;
import com.mahasoft.support_system.role.RoleService;

@Controller
public class LoginController {
	
	@Autowired
	RoleService roleService;
	
	@RequestMapping(value = "/Home")
	public String homePage(Map<String, Object> model){
		model.put("message", "");
		return("Home/Home");
		
	}

	@RequestMapping(value = "/Login")
	public String loginPage(Map<String, Object> model){
		model.put("message", "");
		return("Login/Login");
		
	}
	
	@RequestMapping(value = "/Authenticate", method = RequestMethod.POST)
	public String Authenticate(Map<String, Object> model,@RequestParam("selectedType") String selectedType,
			HttpSession session){
		
		Role role = roleService.findRoleByRoleid(Integer.parseInt(selectedType));
		//System.out.println("Role = "+role.toString());
		model.put("roleid",  role.getRoleid());
		model.put("role",  role.getRoleName());
		session.setAttribute("roleid", role.getRoleid());
		session.setAttribute("role", role.getRoleName());
		System.out.println(" role.getRoleid() = "+role.getRoleid());
		System.out.println("role.getRole_name() = "+role.getRoleName());
		System.out.println("selectedType = "+selectedType);
		return("Login/Login");		
	}	
}
 