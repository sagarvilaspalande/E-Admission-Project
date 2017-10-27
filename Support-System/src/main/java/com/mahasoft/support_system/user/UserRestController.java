package com.mahasoft.support_system.user;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.mahasoft.support_system.department.DepartmentService;
import com.mahasoft.support_system.role.RoleService;

@RestController
public class UserRestController {

	@Autowired
	UserService userService;
	
	@Autowired
	RoleService roleService;
	
	@Autowired
	DepartmentService department;
	
	
	@RequestMapping(value = "/GetAllUsers", method = RequestMethod.POST)
	public List<User> getAllUsers(){
		return userService.getAllUsers();
	}
	
	@RequestMapping(value = "/AddUser", method = RequestMethod.POST)
	public List<User> AddUser(@RequestBody User user){
		System.out.println("user.userid = "+user.getUserid());
		System.out.println("user.roleid = "+user.getRoleid());
		user.setRole(roleService.findRoleByRoleid(user.getRoleid()));
		user.setDepartment(department.findByDepartmentid(user.getDepartmentid()));
		userService.addUser(user);
		return userService.getAllUsers();
	}
	
	@RequestMapping(value = "/UpdateUser", method = RequestMethod.POST)
	public List<User> UpdateUser(@RequestBody User user){
		user.setRole(roleService.findRoleByRoleid(user.getRoleid()));
		user.setDepartment(department.findByDepartmentid(user.getDepartmentid()));
		userService.updateUser(user);
		return userService.getAllUsers();
	}
	
	@RequestMapping(value = "/DeleteUser", method = RequestMethod.POST)
	public List<User> DeleteUser(@RequestBody User user){
		userService.deleteUser(user);
		return userService.getAllUsers();
	}
	
	@RequestMapping(value = "/GetUserById", method = RequestMethod.POST)
	public User GetUserById(@RequestBody User user,HttpSession session){
		System.out.println("user.userid = "+user.getUserid());
		System.out.println("user.roleid = "+user.getRoleid());
		session.setAttribute("userid", user.getUserid());
		return userService.findByUserId(user.getUserid());
	}
	
	@RequestMapping(value = "/GetUserByEmail", method = RequestMethod.POST)
	public User GetUserByEmail(@RequestBody User user,HttpSession session){
		System.out.println("user email = "+user.getUseremail());		
		session.setAttribute("useremail", user.getUseremail());
		return userService.findByUseremail(user.getUseremail());
	}
}
