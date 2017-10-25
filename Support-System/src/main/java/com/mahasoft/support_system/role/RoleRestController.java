package com.mahasoft.support_system.role;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class RoleRestController {

	@Autowired
	RoleService roleService;
	
	@RequestMapping(value = "/GetAllRoles", method = RequestMethod.POST)
	public List<Role> getAllRoles(){
		System.out.println("roleService.getAllRoles() ::"+roleService.getAllRoles());
		return roleService.getAllRoles();
	}
	
	@RequestMapping(value = "/AddRole", method = RequestMethod.POST)
	public List<Role> AddRole(@RequestBody Role role){
		role.setBrCode("1");
		role.setStatus("A");
		role.setCreatedDate(new Date());
		roleService.addRole(role);
		return roleService.getAllRoles();
	}
	
	@RequestMapping(value = "/UpdateRole", method = RequestMethod.POST)
	public List<Role> UpdateRole(@RequestBody Role role){
		role.setUpdatedDate(new Date());
		roleService.updateRole(role);
		return roleService.getAllRoles();
	}
	
	@RequestMapping(value = "/DeleteRole", method = RequestMethod.POST)
	public List<Role> DeleteRole(@RequestBody Role role){
		roleService.deleteRole(role);
		return roleService.getAllRoles();
	}
}
