package org.iii.eeit117.project.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.iii.eeit117.project.model.service.CustomerService;
import org.iii.eeit117.project.model.service.UserService;
import org.iii.eeit117.project.model.util.StringUtil;
import org.iii.eeit117.project.model.vo.CustomerServiceVo;
import org.iii.eeit117.project.model.vo.UserVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.util.UriComponentsBuilder;

@Component
@RequestMapping(value = "/" + BackstageCustomerContactController.MODULE_NAME)
public class BackstageCustomerContactController {
	public static final String MODULE_NAME = "customerContact";
	public static final String LOGIN_PAGE = MODULE_NAME + "Login";
	public static final String MAIN_PAGE = MODULE_NAME + "Main";
	public static final String CUSTOMER_CONTACT_PAGE = MODULE_NAME + "CustomerContact";

	@Autowired
	private CustomerService customerService;
	
	@RequestMapping(value = { "", "/" }, method = RequestMethod.GET)
	public String customerContact(String selectq1, String selectq2, CustomerServiceVo customerServiceVo, Model model) {
		model.addAttribute("selectq1", selectq1);
		model.addAttribute("selectq2", selectq2);

		List<CustomerServiceVo> unResponse = customerService.findUnResponse(selectq1, selectq2);
		model.addAttribute("unResponse", unResponse);
		if (unResponse.size() == 0) {
			model.addAttribute("ResponseMsg", "目前無顧客留言紀錄");
		}
		return MODULE_NAME;
	}

	@RequestMapping(value = "/customerResponse", method = RequestMethod.GET)
	public String customerContact2(CustomerServiceVo customerServiceVo, Model model) {
		model.addAttribute("customerServiceVo", customerServiceVo);
		if (StringUtil.isNonEmpty(customerServiceVo.getAnswer())) {
			customerService.save(customerServiceVo);
		}
		
		String selectQ1 = customerServiceVo.getSelectq1();
		String selectQ2 = customerServiceVo.getSelectq2();
		String url = UriComponentsBuilder.fromUriString("/backstage/customerContact").queryParam("selectq1", selectQ1)
				.queryParam("selectq2", selectQ2).build().encode().toUriString();
		return "redirect:" + url;
	}

}
