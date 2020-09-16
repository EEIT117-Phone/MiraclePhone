package org.iii.eeit117.project.controller;

import org.iii.eeit117.project.model.vo.ProductVo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value = "/" + ProductPromotionVIPController.MODULE_NAME)
public class ProductPromotionVIPController {

	public static final String MODULE_NAME = "productPromotionVIP";
	private ProductVo forsaveproduct;


	@RequestMapping(value = { "", "/" }, method = RequestMethod.GET)
	public String index(@ModelAttribute("product") ProductVo product) {
		
		forsaveproduct=product;
		
		return MODULE_NAME;
	}
	

	@PostMapping("/pay")
	public @ResponseBody String payalready(@RequestParam("promotecase") String promotecase) {
		
		System.out.println(forsaveproduct.getAccount());
		System.out.println(promotecase);
		return "you have succedelly promoted your iphone";
		
		
	}
	
}
