package com.mahasoft.support_system.controlAccess;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ControlAccessController {

	@Autowired
	ControlAccessService controlAccessService;
	
	@RequestMapping(value = "/ControlAccess")
	public String controlAccessPage(Map<String, Object> model){
		return ("ControlAccess/ControlAccess");
	}
}
