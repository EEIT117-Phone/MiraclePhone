package org.iii.eeit117.project.controller;

import java.util.List;

import org.iii.eeit117.project.model.service.CustomerService;
import org.iii.eeit117.project.model.vo.CustomerServiceVo;
import org.iii.eeit117.project.model.vo.UserVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;

@Controller
@RequestMapping(value = "/" + ContactController.MODULE_NAME)
public class ContactController {

	public static final String MODULE_NAME = "contact";

	public static final String MAIN_PAGE = MODULE_NAME + "Main";

	@Autowired
	private CustomerService customerService;

	@RequestMapping(value = { "", "/" }, method = RequestMethod.GET)
	public String index(Model m) {
		return MAIN_PAGE;
	}

	@RequestMapping(value = "/customer", method = RequestMethod.GET)
	public String insert(CustomerServiceVo customerVo) {
		customerService.save(customerVo);
		return MAIN_PAGE;
	}

//	@RequestMapping(value = "/customer", method = RequestMethod.GET)
//	public String search(CustomerServiceVo searchBean, Model m) {
//		m.addAttribute(customerService.findAll());
//		return MAIN_PAGE;
//	}
	
	@ResponseBody
	@RequestMapping(value = "/history", method = RequestMethod.GET)
	public List<CustomerServiceVo> history(@SessionAttribute("user") UserVo user) {
		return customerService.findByAccount(user.getAccount());
	}

}
