package com.mahasoft.support_system.role;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RoleService {

	@Autowired
	RoleRepository roleRepository;
	
	public List<Role> getAllRoles(){
		return (List<Role>) roleRepository.findAll();
	}
	
	public void addRole(Role role){		
		roleRepository.save(role);
	}
	
	public void updateRole(Role role){
		roleRepository.save(role);
	}
	
	public void deleteRole(Role role){
		roleRepository.delete(role);
	}
	
	public Role findRoleByRoleid(int roleid){		
		return roleRepository.findByRoleid(roleid);
	}	
}
