package org.iii.eeit117.project.controller;

import javax.servlet.http.HttpServletRequest;



import org.iii.eeit117.project.model.service.UserService;
import org.iii.eeit117.project.model.vo.UserVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/" + LoginController.MODULE_NAME)
public class LoginController {
	public static final String MODULE_NAME = "user";
	public static final String MAIN_PAGE = MODULE_NAME + "Login";
	public static final String MAKEUSER_PAGE = MODULE_NAME + "MakeUser";

	@Autowired
	private UserService userService;

	@RequestMapping(value = { "", "/" }, method = RequestMethod.GET)
	public String Main(Model model) {
		return MAIN_PAGE;
	}
	@RequestMapping(value = "/1", method = RequestMethod.GET)
	public String GomakeUser(Model model) {
		return MAKEUSER_PAGE;
	}
	
	@RequestMapping(value = "/"+MAIN_PAGE, method = RequestMethod.POST)
	public String checkLogin(HttpServletRequest request,Model model) {
		String account=request.getParameter("useraccount");
		String password=request.getParameter("userpassword");
		String loginStatus=userService.checkLogin(account, password);
		model.addAttribute("loginstatus",loginStatus);
		return MAIN_PAGE;
	}
	@RequestMapping(value = "/"+MAKEUSER_PAGE, method = RequestMethod.POST)
	public String makeUser(@ModelAttribute("makeUser")UserVo userVo) {
		userService.save(userVo);
		return MAKEUSER_PAGE;
		
	}
	
	
	
	
	

}
