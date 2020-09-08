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
	public static final String MAIN_PAGE = MODULE_NAME + "login";
	public static final String SIGNUP_PAGE = MODULE_NAME + "signup";
	public static final String USERMAIN_PAGE=MODULE_NAME+"main";
	public static final String USERMODIFICATION_PAGE=MODULE_NAME+"modification";
	@Autowired
	private UserService userService;
	

	@RequestMapping(value = { "", "/" }, method = RequestMethod.GET) //前往登入畫面捷徑
	public String Main(Model model) {
		return MAIN_PAGE;
	}
	@RequestMapping(value = "/1", method = RequestMethod.GET) //前往創建會員畫面捷徑
	public String GomakeUser(Model model) {
		return SIGNUP_PAGE;
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
			model.addAttribute("user",userVo); //傳送使用者的資料
			model.addAttribute("usercolumn",list);//傳送Users表單的欄位名
			return  USERMAIN_PAGE;
		}
		model.addAttribute("loginstatus",loginStatus);
		return MAIN_PAGE;
	}
	@RequestMapping(value = "/"+SIGNUP_PAGE, method = RequestMethod.POST)
	public String userSignUp(@ModelAttribute("userSignUp")UserVo userVo) {
		userService.save(userVo);
		return SIGNUP_PAGE;
	}
	
	@RequestMapping(value="/"+USERMODIFICATION_PAGE,method=RequestMethod.POST)
	public String userModification(HttpServletRequest request,Model model) {
		String account=request.getParameter("account"); //取得欲修改的使用者帳號
		System.out.println(account);
		UserVo orginaccount=userService.findOne(account); //找在資料庫已存在的使用者資料(用帳號找)
		String password=request.getParameter("password");
		String name=request.getParameter("name");
		String idnumber=request.getParameter("idnumber");
		String birth=request.getParameter("birth");
		String age=request.getParameter("age");
		String county=request.getParameter("county");
		String district=request.getParameter("district");
		String zipcode=request.getParameter("zipcode");
		orginaccount.setPassword(password);
		orginaccount.setName(name);
		orginaccount.setIdnumber(idnumber);
		orginaccount.setBirth(birth);
		orginaccount.setAge(age);
		orginaccount.setCounty(county);
		orginaccount.setDistrict(district);
		orginaccount.setZipcode(zipcode);
		System.out.println(orginaccount.getAccount());
		userService.save(orginaccount);
		return USERMAIN_PAGE;
	}
	
	

}
