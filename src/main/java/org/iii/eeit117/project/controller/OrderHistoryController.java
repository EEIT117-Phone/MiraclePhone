package org.iii.eeit117.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/" + OrderHistoryController.MODULE_NAME)
public class OrderHistoryController {
	
	public static final String MODULE_NAME = "orderHistory";
//	要跟JSP名字一樣?

	public static final String MAIN_PAGE = MODULE_NAME ;

	@RequestMapping(value = { "", "/" }, method = RequestMethod.GET)
	public String index() {
		return MAIN_PAGE;
	}

}
