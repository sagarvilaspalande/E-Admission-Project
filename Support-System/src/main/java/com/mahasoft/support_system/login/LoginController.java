package com.mahasoft.support_system.login;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {
	
	@RequestMapping(value = "/Home")
	public String homePage(Map<String, Object> model){
		model.put("message", "hiiiii Home Page");
		return("Home/Home");
		
	}

	@RequestMapping(value = "/Login")
	public String loginPage(Map<String, Object> model){
		model.put("message", "hiiiii Login Page");
		return("Login/Login");
		
	}
	
	
}
 