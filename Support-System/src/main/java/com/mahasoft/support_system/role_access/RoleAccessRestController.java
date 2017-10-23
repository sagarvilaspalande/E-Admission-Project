package com.mahasoft.support_system.role_access;

import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.mahasoft.support_system.control_access.ControlAccess;
import com.mahasoft.support_system.control_access.ControlAccessService;
import com.mahasoft.support_system.role.Role;
import com.mahasoft.support_system.role.RoleService;

@RestController
public class RoleAccessRestController {

	@Autowired
	RoleAccessService roleAccessService;
	RoleService roleService;
	ControlAccessService controlAccessService;
	
	@RequestMapping(value = "/GetRoles", method = RequestMethod.POST)
	public List<Role> GetRoles(){
		System.out.println("Role :: " +roleService.getAllRoles());
		return roleService.getAllRoles();
	}
	
	@RequestMapping(value = "/GetControlAccesses", method = RequestMethod.POST)
	public List<ControlAccess> GetControlAccesses(){
		System.out.println("Control Access :: " +controlAccessService.getAllControlAccesses());
		return controlAccessService.getAllControlAccesses();
	}
	
	@RequestMapping(value = "/GetAllRoleAccesses", method = RequestMethod.POST)
	public List<RoleAccess> GetAllRoleAccesses(){
		return roleAccessService.getAllRoleAccesses();
	}
	
	@RequestMapping(value = "/AddRoleAccess", method = RequestMethod.POST)
	public List<RoleAccess> AddRoleAccess(@RequestBody RoleAccess roleAccess){
		roleAccess.setBr_code("1");
		roleAccess.setStatus("A");
		roleAccess.setCreated_date(new Date());
		roleAccessService.addRoleAccess(roleAccess);
		return roleAccessService.getAllRoleAccesses();
	}
	
	@RequestMapping(value = "/UpdateRoleAccess", method = RequestMethod.POST)
	public List<RoleAccess> UpdateRoleAccess(@RequestBody RoleAccess roleAccess){
		roleAccess.setUpdated_date(new Date());
		roleAccessService.updateRoleAccess(roleAccess);
		return roleAccessService.getAllRoleAccesses();
	}
	
	@RequestMapping(value = "/DeleteRoleAccess", method = RequestMethod.POST)
	public List<RoleAccess> DeleteRoleAccess(@RequestBody RoleAccess roleAccess){
		roleAccessService.deleteRoleAccess(roleAccess);
		return roleAccessService.getAllRoleAccesses();
	}
}
