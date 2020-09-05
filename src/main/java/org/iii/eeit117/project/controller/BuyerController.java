package org.iii.eeit117.project.controller;

import org.iii.eeit117.project.model.service.BuyerService;
import org.iii.eeit117.project.model.service.HelloService;
import org.iii.eeit117.project.model.vo.BuyerVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



@Controller
@RequestMapping(value="/buyerpage")
public class BuyerController {

	
	@Autowired
	private BuyerService buyerService;
	
	@RequestMapping(value="/info",method = RequestMethod.GET)
	public String sellerInfo(Model model) {
		
		model.addAttribute("info", buyerService.findOne(10018));
		
		 return "buyer";
	}
}
