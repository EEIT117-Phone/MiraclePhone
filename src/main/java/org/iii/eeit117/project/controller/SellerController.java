package org.iii.eeit117.project.controller;

import java.util.List;


import org.iii.eeit117.project.model.service.SellerService;
import org.iii.eeit117.project.model.vo.SellerVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value = "/" + SellerController.MODULE_NAME)
public class SellerController {

	public static final String MODULE_NAME = "seller";

	public static final String MAIN_PAGE = MODULE_NAME;
	
	public static final String SalesPrice_PAGE = "salesPrice";

	public static final String UPDATE_PAGE = MODULE_NAME + "Update";



	@Autowired
	private SellerService SellerService;



	@RequestMapping(value = { "", "/" }, method = RequestMethod.GET)
	public String index(Model model) {
		model.addAttribute("seller", new SellerVo());
		return MAIN_PAGE;
	}

	@RequestMapping(value = { "/insert", "/update" }, method = RequestMethod.POST)
	public String insert(SellerVo SellerVo) {
		SellerService.save(SellerVo);
		return "redirect:/" + SalesPrice_PAGE;
	}
	
	@ResponseBody
	@RequestMapping(value = "test", method = RequestMethod.GET)
	public List<SellerVo> test() {
		return SellerService.findAll();
	}

}
