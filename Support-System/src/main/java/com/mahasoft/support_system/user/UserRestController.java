package com.mahasoft.support_system.user;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class UserRestController {

	@Autowired
	UserService userService;
	
	@RequestMapping(value = "/GetAllUsers", method = RequestMethod.POST)
	public List<User> getAllUsers(){
		return userService.getAllUsers();
	}
	
	@RequestMapping(value = "/AddUser", method = RequestMethod.POST)
	public List<User> AddUser(@RequestBody User user){
		userService.addUser(user);
		return userService.getAllUsers();
	}
	
	@RequestMapping(value = "/UpdateUser", method = RequestMethod.POST)
	public List<User> UpdateUser(@RequestBody User user){
		userService.updateUser(user);
		return userService.getAllUsers();
	}
	
	@RequestMapping(value = "/DeleteUser", method = RequestMethod.POST)
	public List<User> DeleteUser(@RequestBody User user){
		userService.deleteUser(user);
		return userService.getAllUsers();
	}
}
