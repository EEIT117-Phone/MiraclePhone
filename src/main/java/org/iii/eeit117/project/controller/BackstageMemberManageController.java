package org.iii.eeit117.project.controller;

import java.util.List;

import org.iii.eeit117.project.model.service.CustomerService;
import org.iii.eeit117.project.model.service.ProductService;
import org.iii.eeit117.project.model.service.UserService;
import org.iii.eeit117.project.model.vo.CustomerServiceVo;
import org.iii.eeit117.project.model.vo.ProductVo;
import org.iii.eeit117.project.model.vo.UserVo;
import org.iii.eeit117.project.search.MemberSearchBean;
import org.iii.eeit117.project.search.ProductSearchBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Component
@RequestMapping(value = "/" + BackstageMemberManageController.MODULE_NAME)
public class BackstageMemberManageController {
	public static final String MODULE_NAME = "memberManagement";
	public static final String MAIN_PAGE = MODULE_NAME + "Main";
	public static final String CUSTOMER_CONTACT_PAGE = MODULE_NAME + "CustomerContact";

	@Autowired
	private UserService userService;

	@RequestMapping(value = { "", "/" }, method = RequestMethod.GET)
	public String goMainPageGET(MemberSearchBean searchBean, Model model) {
		model.addAttribute("searchBean", searchBean);
		return MAIN_PAGE;
	}

	@RequestMapping(value = "/searchMember", method = RequestMethod.POST)
	public String searchMember(MemberSearchBean searchBean, Model model) {
		model.addAttribute("searchBean", searchBean);
		model.addAttribute("results", userService.search(searchBean));
		List<UserVo> aa = userService.search(searchBean);
		for(UserVo vo: aa) {
			if("seller" == vo.getSeller()){
				String key = "authority"+vo.getAccount();
				model.addAttribute(key, "買家／賣家");
			}else {
				model.addAttribute("authority", "買家");
			}
			
		}
		return MAIN_PAGE;
	}
	@ResponseBody
	@RequestMapping(value = "/deleteMember", method = RequestMethod.GET)
	public String deleteMember(MemberSearchBean searchBean, Model model, Integer productId) {
		model.addAttribute("searchBean", searchBean);
		return MAIN_PAGE;
	}

}
