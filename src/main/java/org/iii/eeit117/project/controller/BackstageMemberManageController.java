package org.iii.eeit117.project.controller;

import java.util.List;

import org.iii.eeit117.project.model.service.ProductService;
import org.iii.eeit117.project.model.service.UserService;
import org.iii.eeit117.project.model.vo.UserVo;
import org.iii.eeit117.project.search.MemberSearchBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.util.UriComponentsBuilder;

@Component
@RequestMapping(value = "/" + BackstageMemberManageController.MODULE_NAME)
public class BackstageMemberManageController {
	public static final String MODULE_NAME = "memberManagement";
	public static final String MAIN_PAGE = MODULE_NAME + "Main";
	public static final String CUSTOMER_CONTACT_PAGE = MODULE_NAME + "CustomerContact";

	@Autowired
	private UserService userService;
	@Autowired
	private ProductService productService;
	
	@RequestMapping(value = { "", "/" }, method = RequestMethod.GET)
	public String goMainPageGET(MemberSearchBean searchBean, Model model) {
		model.addAttribute("searchBean", searchBean);
		return MAIN_PAGE;
	}

	@RequestMapping(value = "/searchMember", method = RequestMethod.GET)
	public String searchMember(MemberSearchBean searchBean, Model model) {
		model.addAttribute("searchBean", searchBean);
		List<UserVo> users = userService.search(searchBean);
		for (UserVo user : users) {
			user.setPostAmount(productService.countByAccount(user.getAccount()));
		}
		model.addAttribute("results", userService.search(searchBean));
		return MAIN_PAGE;
	}
	@RequestMapping(value = "/deleteMember", method = RequestMethod.GET)
	public String deleteMember(MemberSearchBean searchBean, Model model, String account, String status) {
		model.addAttribute("searchBean", searchBean);
		UserVo uservo = userService.findOne(account);
		uservo.setStatus(status);
		userService.save(uservo);
		
		String idnumber = uservo.getIdnumber();
		String url = UriComponentsBuilder.fromUriString("/memberManagement/searchMember").queryParam("account", account)
				.queryParam("idnumber", idnumber).build().encode().toUriString();
		
		return "redirect:" + url;
		
	}

}
