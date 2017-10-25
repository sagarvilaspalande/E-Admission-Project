package com.mahasoft.support_system.controlAccess;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mahasoft.support_system.role.Role;

@Service
public class ControlAccessService {

	@Autowired
	ControlAccessRepository controlAccessRepository;
	
	public List<ControlAccess> getAllControlAccesses(){
		return (List<ControlAccess>) controlAccessRepository.findAll();
	}
	
	public void addControlAccess(ControlAccess controlAccess){
		controlAccessRepository.save(controlAccess);
	}
	
	public void updateControlAccess(ControlAccess controlAccess){
		controlAccessRepository.save(controlAccess);
	}
	
	public void deleteControlAccess(ControlAccess controlAccess) {
		controlAccessRepository.delete(controlAccess);
	}
	
	public ControlAccess findByControlaccessid(int controlaccessid){		
		return controlAccessRepository.findByControlaccessid(controlaccessid);
	}
}
