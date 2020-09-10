package org.iii.eeit117.project.controller;

import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Component
@RequestMapping(value="/"+BackstageController.MODULE_NAME)
public class BackstageController {
	public static final String MODULE_NAME="backstage"; 
	public static final String MAIN_PAGE=MODULE_NAME+"main";
	
	@RequestMapping(value= {"","/"},method=RequestMethod.GET)
	public String goMainPageGET() {
		return MAIN_PAGE;
	}
//	@RequestMapping(value= {"","/"},method=RequestMethod.POST)
//	public String goMainPagePOST() {
//		return MAIN_PAGE;
//	}

}
