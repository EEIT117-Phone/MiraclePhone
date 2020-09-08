package org.iii.eeit117.project.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;



import org.iii.eeit117.project.model.service.UserService;
import org.iii.eeit117.project.model.service.impl.UserServiceImpI;
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
	public static final String USERMAIN_PAGE=MODULE_NAME+"main";
	@Autowired
	private UserService userService;
	

	@RequestMapping(value = { "", "/" }, method = RequestMethod.GET) //前往登入畫面捷徑
	public String Main(Model model) {
		return MAIN_PAGE;
	}
	@RequestMapping(value = "/1", method = RequestMethod.GET) //前往創建會員畫面捷徑
	public String GomakeUser(Model model) {
		return MAKEUSER_PAGE;
	}
	@RequestMapping(value = "/2", method = RequestMethod.GET) //前往會員資料畫面捷徑
	public String GoUserMain(Model model) {
		return "usermain";
	}
	
	@RequestMapping(value = "/"+MAIN_PAGE, method = RequestMethod.POST)
	public String checkLogin(HttpServletRequest request,Model model) {
		String account=request.getParameter("useraccount");
		String password=request.getParameter("userpassword");
		String loginStatus=userService.checkLogin(account, password);
		List<String> list=new ArrayList<String>();
		list=userService.getColumnName();
		System.out.println(list);
		if(loginStatus.equals("acc&&pwd are corrected")) {
			System.out.println(loginStatus);
			UserVo userVo=userService.findOne(account);
			model.addAttribute("user",userVo);
			model.addAttribute("useraccount",account);
			model.addAttribute("usercolumn",list);
			return  USERMAIN_PAGE;
		}
		model.addAttribute("loginstatus",loginStatus);
		return MAIN_PAGE;
	}
	@RequestMapping(value = "/"+MAKEUSER_PAGE, method = RequestMethod.POST)
	public String makeUser(@ModelAttribute("makeUser")UserVo userVo) {
		userService.save(userVo);
		return MAKEUSER_PAGE;
	}
	
	

}
