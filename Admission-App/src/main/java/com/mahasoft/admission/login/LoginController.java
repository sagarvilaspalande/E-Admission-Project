package com.mahasoft.admission.login;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {

	@RequestMapping(value = "/first")
    public String home(Map<String, Object> model) {
        model.put("message", "hiiiii Page");
        return "index";
    }
     
    @RequestMapping(value = "/next")
    public String next(Map<String, Object> model) {
        model.put("message", "You are in new page !!");
        return "next";
    }
    
    @RequestMapping(value = "/Login")
    public String loginPage(Map<String, Object> model) {
        model.put("message", "You are in new page !!");
        return "Login/Login";
    }
    
    @RequestMapping(value = "/Home")
    public String homePage(Map<String, Object> model) {
        model.put("message", "You are in new page !!");
        return "Home/HomePage";
    }
    
  
}
