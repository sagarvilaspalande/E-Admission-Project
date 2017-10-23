package com.mahasoft.support_system.control_access;

import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ControlAccessRestController {

	@Autowired
	ControlAccessService controlAccessService;
	
	@RequestMapping(value = "/GetAllControlAccesses", method = RequestMethod.POST)
	public List<ControlAccess> GetAllControlAccesses(){
		return controlAccessService.getAllControlAccesses();
	}
	
	@RequestMapping(value = "/AddControlAccess", method = RequestMethod.POST)
	public List<ControlAccess> AddControlAccess(@RequestBody ControlAccess controlAccess){
		controlAccess.setBr_code("1");
		controlAccess.setStatus("A");
		controlAccess.setCreated_date(new Date());
		controlAccessService.addControlAccess(controlAccess);
		return controlAccessService.getAllControlAccesses();
	}
	
	@RequestMapping(value = "/UpdateControlAccess", method = RequestMethod.POST)
	public List<ControlAccess> UpdateControlAccess(@RequestBody ControlAccess controlAccess){
		controlAccess.setUpdated_date(new Date());
		controlAccessService.updateControlAccess(controlAccess);
		return controlAccessService.getAllControlAccesses();
	}
	
	@RequestMapping(value = "/DeleteControlAccess", method = RequestMethod.POST)
	public List<ControlAccess> DeleteControlAccess(@RequestBody ControlAccess controlAccess){
		controlAccessService.deleteControlAccess(controlAccess);
		return controlAccessService.getAllControlAccesses();
	}
}
