package com.mahasoft.support_system.role_access;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mahasoft.support_system.control_access.ControlAccess;
import com.mahasoft.support_system.control_access.ControlAccessRepository;
import com.mahasoft.support_system.role.Role;
import com.mahasoft.support_system.role.RoleRepository;

@Service
public class RoleAccessService {

	@Autowired
	RoleAccessRepository roleAccessRepository;
	RoleRepository roleRepository;
	ControlAccessRepository controlAccessRepository;
	
	public List<Role> getAllRoles(){
		return (List<Role>) roleRepository.findAll();
	}
	
	public List<ControlAccess> getAllControlAccesses(){
		return (List<ControlAccess>) controlAccessRepository.findAll();
	}
	
	public List<RoleAccess> getAllRoleAccesses(){
		return (List<RoleAccess>) roleAccessRepository.findAll();
	}
	
	public void addRoleAccess(RoleAccess roleAccess){
		roleAccessRepository.save(roleAccess);
	}
	
	public void updateRoleAccess(RoleAccess roleAccess){
		roleAccessRepository.save(roleAccess);
	}
	
	public void deleteRoleAccess(RoleAccess roleAccess) {
		roleAccessRepository.delete(roleAccess);
	}
}
