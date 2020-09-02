package org.iii.eeit117.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = { "/", "/" + IndexController.MODULE_NAME })
public class IndexController {

	public static final String MODULE_NAME = "index";
	
	public static final String MAIN_PAGE = MODULE_NAME + "Main";

	@RequestMapping(value = { "", "/" }, method = RequestMethod.GET)
	public String index() {
		return MAIN_PAGE;
	}
	
}
