package com.mahasoft.support_system.user;

import java.util.Map;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class UserController {
	
	@Autowired
	UserService userService;
	
	@RequestMapping(value = "/AddUser")
	public String registerPage(Map<String, Object> model){
		model.put("message", "UserPage");
		return("User/AddUser");
		
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
	
	@RequestMapping(value = "/ValidateUser", method = RequestMethod.POST)
	public String ValidateUser(Map<String, Object> model,@RequestParam("useremail") String 
			useremail,@RequestParam("password") String password,HttpSession session){
		
		System.out.println("user email id :: "+useremail);
		System.out.println("user password :: "+password);
		
		User user = userService.findByUseremail(useremail);
		System.out.println("user emailid :: "+user.getUseremail());
		System.out.println("user password :: "+user.getPassword());
		
		System.out.println("Role Id :: "+session.getAttribute("roleid"));
		System.out.println("user Role Id :: "+user.getRoleid());
		
		if(session.getAttribute("roleid").equals(user.getRoleid())) 
		{			
			System.out.println("Valid User");
			if(password.equals(user.getPassword())) 
			{	
				System.out.println("Successfully Logged In!!!");
				return("AdminHome/AdminHome");
			}
			else 
			{
				System.out.println("role :: "+session.getAttribute("role"));
				model.put("roleid", session.getAttribute("roleid"));		
				model.put("role", session.getAttribute("role"));			
				model.put("message", "Password Does Not Match! Please Enter The Correct Password.");
				return("Login/Login");		
			}	
			
		}else 
		{
			System.out.println("Invalid User");
			model.put("message", "This User Does Not Have Access To Login Here!!!");
			return("Login/Login");	
		}			
	}
	
	/*@RequestMapping(value = "/ValidateUser", method = RequestMethod.POST)
	public String ValidateUser(Map<String, Object> model,@RequestParam("userid") String 
			userid,@RequestParam("password") String password,HttpSession session){
		
		System.out.println("user.userid = "+userid);
		System.out.println("user.password = "+password);
		
		User user = userService.findByUserId(Integer.parseInt(userid));
		System.out.println("user id = "+user.getUserid());
		System.out.println("user password = "+user.getPassword());
		
		System.out.println("Role Id :: "+session.getAttribute("roleid"));
		System.out.println("user Role Id :: "+user.getRoleid());
		
		if(session.getAttribute("roleid").equals(user.getRoleid())) 
		{			
			System.out.println("Valid User");
			if(password.equals(user.getPassword())) 
			{	
				System.out.println("Successfully Logged In!!!");
				return("AdminHome/AdminHome");
			}
			else 
			{
				System.out.println("role :: "+session.getAttribute("role"));
				model.put("roleid", session.getAttribute("roleid"));		
				model.put("role", session.getAttribute("role"));			
				model.put("message", "Password Does Not Match! Please Enter The Correct Password.");
				return("Login/Login");		
			}	
			
		}else 
		{
			System.out.println("Invalid User");
			model.put("message", "This User Does Not Have Access To Login Here!!!");
			return("Login/Login");	
		}			
	}*/
}