package org.iii.eeit117.project.controller;

import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Component
@RequestMapping(value="/"+BackstageController.MODULE_NAME)
public class BackstageController {
	public static final String MODULE_NAME="backstage"; 
	public static final String MAIN_PAGE=MODULE_NAME+"Main";
	public static final String CUSTOMER_CONTACT_PAGE=MODULE_NAME+"CustomerContact";
	
	@RequestMapping(value= {"","/"},method=RequestMethod.GET)
	public String goMainPageGET() {
		return MAIN_PAGE;
	}
	
	@RequestMapping(value = "/customerContact", method = RequestMethod.GET)
	public String customerContact() {
		return CUSTOMER_CONTACT_PAGE;
	}

}
