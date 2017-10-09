package com.mahasoft.admission.login;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class Login {

	@RequestMapping("/LoginPage")
	public String LoginPage(){
		return "Login";
	}
}
