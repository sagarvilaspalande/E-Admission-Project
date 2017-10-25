package com.mahasoft.support_system.roleAccess;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mahasoft.support_system.controlAccess.ControlAccess;
import com.mahasoft.support_system.controlAccess.ControlAccessRepository;
import com.mahasoft.support_system.role.Role;
import com.mahasoft.support_system.role.RoleRepository;

@Service
public class RoleAccessService {

	@Autowired
	RoleAccessRepository roleAccessRepository;
	
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
