package org.iii.eeit117.project.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import org.iii.eeit117.project.model.service.EmailService;
import org.iii.eeit117.project.model.service.FileService;
import org.iii.eeit117.project.model.service.UserService;
import org.iii.eeit117.project.model.vo.FileStorageVo;
import org.iii.eeit117.project.model.vo.ProductVo;
import org.iii.eeit117.project.model.vo.UserVo;
import org.iii.eeit117.project.property.AppProperty;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.codec.multipart.Part;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;



@Controller
public class LoginController {
	public static final String MODULE_NAME = "user";
	public static final String MAIN_PAGE = MODULE_NAME + "login";
	public static final String SIGNUP_PAGE = MODULE_NAME + "signup";
	public static final String USERMAIN_PAGE=MODULE_NAME+"main";
	public static final String USERMODIFICATION_PAGE=MODULE_NAME+"modification";
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private FileService fileService;
	
	@Autowired
	private EmailService emailService;
	
	@RequestMapping(value = MAIN_PAGE, method = RequestMethod.GET)
	public String Main(Model model) {
		return MAIN_PAGE;
	}
	
	@ResponseBody
	@RequestMapping(value="useracccheck",method=RequestMethod.POST) //驗證帳號是否重複
	public String checkAcc(String checkaccount,HttpServletRequest request) throws UnsupportedEncodingException {
		request.setCharacterEncoding("UTF-8");
		
		Pattern p;
		Matcher m;
		String checkacc=checkaccount;
		String accrule = "^([a-z0-9A-Z]+[-|\\.]?)+[a-z0-9A-Z]@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-zA-Z]{2,}$"; //帳號驗證規則
		p = Pattern.compile(accrule);
		m = p.matcher(checkacc);
		UserVo result=userService.findOne(checkacc);
		if(!m.matches()) { //輸入的帳號格式驗證
			String checkacc_result="帳號格式發生錯誤或空白";
			
			return checkacc_result;
		}
		
		if(result!=null) {
			String checkacc_result="帳號已經被註冊過";
			
			return checkacc_result;
		}
		else
		{
			String checkacc_result="帳號可以使用";
			
			return checkacc_result;
		}
		
	}
	
	@RequestMapping(value = MAIN_PAGE, method = RequestMethod.POST)
	public String checkLogin(HttpServletRequest request,HttpServletResponse response,HttpSession httpsession,Model model) throws IOException {
		String account=request.getParameter("useraccount"); //取得輸入帳號
		String password=request.getParameter("userpassword");//取得輸入密碼
		
		String loginStatus=userService.checkLogin(account, password); //驗證取得的帳密是否存在資料庫
		
		
		if(loginStatus.equals("帳號密碼正確")) {
			UserVo userVo=userService.findOne(account);

			httpsession=request.getSession();
			
			httpsession.setAttribute("user", userVo); //登入成功將session內放入uservo物件
			
			
			if (httpsession.getAttribute(AppProperty.REDIRECT_URL) != null) {
				return "redirect:/" + httpsession.getAttribute(AppProperty.REDIRECT_URL);
    		} else {
    			return "redirect:/";
    		}

			
		}
		model.addAttribute("loginstatus",loginStatus); //將登入狀態傳回去
		return MAIN_PAGE;
	}
	
	@RequestMapping(value =SIGNUP_PAGE, method = RequestMethod.GET) 
	public String Gousersignup(Model model) {
		return SIGNUP_PAGE;
	}
	
	@RequestMapping(value = SIGNUP_PAGE, method = RequestMethod.POST)
	public String userSignUp(@ModelAttribute("userSignUp")UserVo userVo, MultipartFile file,HttpServletRequest request) throws Exception {
		String status=request.getParameter("status");
		if(status.equals("")) {
			userVo.setStatus("Unverified");
		}
		if (file != null) {
			FileStorageVo fileStorageVo = fileService.upload(file, ProductVo.class);
			userVo.setPic(fileStorageVo.getFileStorageId());
		}
		userService.save(userVo);
		
		return MAIN_PAGE;
	}
	
	//如果從搜尋頁面直接點修改會員資料
	//先判斷session內是否有userVo
	//是則導往會員修改頁面，否則導往登入頁面
	@RequestMapping(value=USERMODIFICATION_PAGE,method=RequestMethod.GET)
	public String userDirectModification(HttpServletRequest request,HttpSession httpsession,Model model) {
		UserVo user=(UserVo) httpsession.getAttribute("user");
		
		if(user!=null) {
			return USERMAIN_PAGE;
		}
		else {
			return MAIN_PAGE;
		}
		
	}
	
	@RequestMapping(value=USERMODIFICATION_PAGE,method=RequestMethod.POST)
	public String userModification(HttpServletRequest request,@ModelAttribute("userModification")UserVo userVo,HttpSession httpsession,MultipartFile file) throws Exception {
		if (file.getSize()!=0) {
			
			FileStorageVo fileStorageVo = fileService.upload(file, ProductVo.class);
			userVo.setPic(fileStorageVo.getFileStorageId());
		}
		else {
			
			UserVo orgin=(UserVo) httpsession.getAttribute("user");
			Integer orgin_pic=orgin.getPic();
			userVo.setPic(orgin_pic);
		}
		
		userService.save(userVo);
		httpsession.setAttribute("user", userVo);
		return USERMAIN_PAGE;
	}
	
	@RequestMapping(value = "/userlogout", method = RequestMethod.GET) 
	public String logout(HttpSession session) {
		session.removeAttribute(AppProperty.LOGIN_USER);
		session.removeAttribute("cart");
    	session.removeAttribute("cartItemMap");
		return "redirect:/";
	}
	
	@RequestMapping(value = "/userforget", method = RequestMethod.POST)
	public String forget(HttpServletRequest request) {
			String account=request.getParameter("checkaccount");
			String checkidnumber=request.getParameter("checkidnumber");
			UserVo result=userService.findOne(account);
			
			if(result!=null) {
				String idnumber=result.getIdnumber();
				if(checkidnumber.equals(idnumber)) {
				emailService.sendSimpleMessage(account, "奇機銷售-忘記密碼", "您的密碼是:"+result.getPassword());
				request.setAttribute("loginstatus", "信件已寄出");
				return MAIN_PAGE;
				}
				else {
					request.setAttribute("loginstatus", "身份證字號錯誤");
					return MAIN_PAGE;
				}
			}
			else {
				request.setAttribute("loginstatus", "查無此帳號");
				return MAIN_PAGE;
			}
}
}
