package org.iii.eeit117.project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/" + productPromotionVIPController.MODULE_NAME)
public class productPromotionVIPController {

	public static final String MODULE_NAME = "productPromotionVIP";



	@RequestMapping(value = { "", "/" }, method = RequestMethod.GET)
	public String index() {
		return MODULE_NAME;
	}
	
}
