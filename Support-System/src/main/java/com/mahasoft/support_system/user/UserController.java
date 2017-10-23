package com.mahasoft.support_system.user;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {
	
	@RequestMapping(value = "/RegisterUser")
	public String registerPage(Map<String, Object> model){
		model.put("message", "Register Page");
		return("Register/RegisterUser");
		
	}
	
	@RequestMapping(value = "/AdminHome")
	public String adminHomePage(Map<String, Object> model){
		model.put("message", "admin Page");
		return("AdminHome/AdminHome");
		
	}
	
	@RequestMapping(value = "/UserHome")
	public String userHomePage(Map<String, Object> model){
		model.put("message", "admin Page");
		return("UserHome/UserHome");
		
	}

}