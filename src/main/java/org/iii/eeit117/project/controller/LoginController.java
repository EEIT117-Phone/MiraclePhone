package org.iii.eeit117.project.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
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
	
	@RequestMapping(value = "/"+MAIN_PAGE, method = RequestMethod.POST)
	public String checkLogin(HttpServletRequest request,HttpServletResponse response,HttpSession httpsession,Model model) throws IOException {
		String account=request.getParameter("useraccount"); //取得輸入帳號
		String password=request.getParameter("userpassword");//取得輸入密碼
		String lastpageurl=request.getParameter("lastpage");//取得上一頁網址
		String loginStatus=userService.checkLogin(account, password); //驗證取得的帳密是否存在資料庫
		List<String> list=new ArrayList<String>();
		list=userService.getColumnName(); //取得Users表單上欄位名稱
		System.out.println(list);
		if(loginStatus.equals("acc&&pwd are corrected")) {
			UserVo userVo=userService.findOne(account);
			System.out.println(userVo.getGm());
			if(userVo.getGm().equals("gm")) { //確認是否為gm，是則導入後台管理畫面
				httpsession.setAttribute("user", userVo);
				return "backstagemain";
			}
			httpsession=request.getSession();
			httpsession.setAttribute("usercolumn",list);
			httpsession.setAttribute("inservice", true); //登入成功設定狀態:true在httpsession內
			httpsession.setAttribute("user", userVo); //登入成功將session內放入uservo物件
			
//			model.addAttribute("user",userVo); //傳送使用者的資料
//			model.addAttribute("usercolumn",list);//傳送Users表單的欄位名
			
			System.out.println(lastpageurl);
			response.sendRedirect(lastpageurl);//驗證成功跳轉回上一頁
			
		}
		model.addAttribute("loginstatus",loginStatus);
		return MAIN_PAGE;
	}
	@RequestMapping(value = "/"+SIGNUP_PAGE, method = RequestMethod.GET) 
	public String Gousersignup(Model model) {
		return SIGNUP_PAGE;
	}
	@RequestMapping(value = "/"+SIGNUP_PAGE, method = RequestMethod.POST)
	public String userSignUp(@ModelAttribute("userSignUp")UserVo userVo) {
		userService.save(userVo);
		return SIGNUP_PAGE;
	}
	
	
	//如果從搜尋頁面直接點修改會員資料
	//先判斷session內的inservice屬性是否為true
	//是則導往會員修改頁面，否則導往登入頁面
	@RequestMapping(value="/"+USERMODIFICATION_PAGE,method=RequestMethod.GET)
	public String userDirectModification(HttpServletRequest request,HttpSession httpsession,Model model) {
		boolean inservice=(boolean) httpsession.getAttribute("inservice");
		if(inservice) {
			return USERMAIN_PAGE;
		}
		else {
			return MAIN_PAGE;
		}
		
		
	}
	
	@RequestMapping(value="/"+USERMODIFICATION_PAGE,method=RequestMethod.POST)
	public String userModification(HttpServletRequest request,HttpSession httpsession,Model model) {
		String account=request.getParameter("account"); //取得欲修改的使用者帳號
		System.out.println(account);
		UserVo orginaccount=userService.findOne(account); //找在資料庫已存在的使用者資料(用帳號找)
		String password=request.getParameter("password");
		String name=request.getParameter("name");
		String idnumber=request.getParameter("idnumber");
		String birth=request.getParameter("birth");
		String age=request.getParameter("age");
		String bankaccount=request.getParameter("bankaccount");
		String county=request.getParameter("county");
		String district=request.getParameter("district");
		String zipcode=request.getParameter("zipcode");
		String gm=request.getParameter("gm");
		String seller=request.getParameter("seller");
		orginaccount.setPassword(password);
		orginaccount.setName(name);
		orginaccount.setIdnumber(idnumber);
		orginaccount.setBirth(birth);
		orginaccount.setAge(age);
		orginaccount.setAge(bankaccount);
		orginaccount.setCounty(county);
		orginaccount.setDistrict(district);
		orginaccount.setZipcode(zipcode);
		orginaccount.setGm(gm);
		orginaccount.setSeller(seller);
		userService.save(orginaccount);
		UserVo userVo=userService.findOne(account);
		httpsession=request.getSession();
		httpsession.setAttribute("user", userVo);
		return USERMAIN_PAGE;
	}
	
	
	

}
