package com.mahasoft.support_system.roleAccess;

import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.mahasoft.support_system.controlAccess.ControlAccess;
import com.mahasoft.support_system.controlAccess.ControlAccessService;
import com.mahasoft.support_system.role.Role;
import com.mahasoft.support_system.role.RoleService;

@RestController
public class RoleAccessRestController {

	@Autowired
	RoleAccessService roleAccessService;
	
	@Autowired
	RoleService roleService;
	
	@Autowired
	ControlAccessService controlAccessService;
	
	@RequestMapping(value = "/GetAllRoleAccesses", method = RequestMethod.POST)
	public List<RoleAccess> GetAllRoleAccesses(){		
		return roleAccessService.getAllRoleAccesses();
	}
	
	@RequestMapping(value = "/AddRoleAccess", method = RequestMethod.POST)
	public List<RoleAccess> AddRoleAccess(@RequestBody RoleAccess roleAccess){
		System.out.println("roleAccessid = "+roleAccess.getRoleaccessid());
		System.out.println("roleid = "+roleAccess.getRoleid());
		System.out.println("controlAccessid = "+roleAccess.getControlaccessid());
		roleAccess.setRole(roleService.findRoleByRoleid(roleAccess.getRoleid()));
		roleAccess.setControlAccess(controlAccessService.findByControlaccessid(roleAccess.getControlaccessid()));
		
		roleAccess.setBrCode("1");
		roleAccess.setStatus("A");
		roleAccess.setCreatedDate(new Date());
		roleAccessService.addRoleAccess(roleAccess);
		return roleAccessService.getAllRoleAccesses();
	}
	
	@RequestMapping(value = "/UpdateRoleAccess", method = RequestMethod.POST)
	public List<RoleAccess> UpdateRoleAccess(@RequestBody RoleAccess roleAccess){
		roleAccess.setRole(roleService.findRoleByRoleid(roleAccess.getRoleid()));
		roleAccess.setControlAccess(controlAccessService.findByControlaccessid(roleAccess.getControlaccessid()));
		
		roleAccess.setUpdatedDate(new Date());
		roleAccessService.updateRoleAccess(roleAccess);
		return roleAccessService.getAllRoleAccesses();
	}
	
	@RequestMapping(value = "/DeleteRoleAccess", method = RequestMethod.POST)
	public List<RoleAccess> DeleteRoleAccess(@RequestBody RoleAccess roleAccess){
		roleAccessService.deleteRoleAccess(roleAccess);
		return roleAccessService.getAllRoleAccesses();
	}
}
