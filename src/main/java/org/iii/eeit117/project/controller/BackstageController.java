package org.iii.eeit117.project.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.iii.eeit117.project.model.service.CustomerService;
import org.iii.eeit117.project.model.service.UserService;
import org.iii.eeit117.project.model.vo.UserVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Component
@RequestMapping(value = "/" + BackstageController.MODULE_NAME)
public class BackstageController {
	public static final String MODULE_NAME = "backstage";
	public static final String LOGIN_PAGE = MODULE_NAME + "Login";
	public static final String MAIN_PAGE = MODULE_NAME + "Main";
	public static final String CUSTOMER_CONTACT_PAGE = MODULE_NAME + "CustomerContact";

	@Autowired
	private CustomerService customerService;
	
	@Autowired
	private UserService userService;

	@RequestMapping(value = { "", "/" }, method = RequestMethod.GET)
	public String goMainPageGET() {
		return MAIN_PAGE;
	}
	
	@RequestMapping(value ="/"+ LOGIN_PAGE, method = RequestMethod.GET)
	public String goLoginPageGET() {
		return LOGIN_PAGE;
	}
	@RequestMapping(value ="/"+ LOGIN_PAGE, method = RequestMethod.POST)
	public String Login(HttpServletRequest request,HttpSession httpsession) {
		String account=request.getParameter("account");
		UserVo userVo=userService.findOne(account);
		if(userVo!=null) {
			if(userVo.getStatus().equals("gm")) { //確認是否為gm，是則導入後台管理畫面
				httpsession.setAttribute("user", userVo);
				return MAIN_PAGE;
		}
			else if(userVo.getStatus().equals("user")) {
				return "userlogin";
			}
		}
		
		return LOGIN_PAGE;
	}
}
