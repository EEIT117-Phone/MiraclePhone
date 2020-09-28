package org.iii.eeit117.project.controller;

import javax.servlet.http.HttpSession;

import org.iii.eeit117.project.model.service.EmailService;
import org.iii.eeit117.project.model.service.UserService;
import org.iii.eeit117.project.model.vo.UserVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class VerifyMail {
	
	@Autowired
	public EmailService emailService;
	
	@Autowired
	public UserService userService;
	
	
@ResponseBody
@RequestMapping(value = "vertifimail", method = RequestMethod.GET)
public String send(String checkaccount) {
	
	emailService.sendSimpleMessage(
		checkaccount, 
		"奇機銷售-驗證信", 
		"請點選連結: http://localhost:8080/MiraclePhone/vertifimail/getmail?checkaccount="+checkaccount
		);
		return "驗證信已經傳送";

	}

@RequestMapping(value = "vertifimail/getmail", method = RequestMethod.GET)
public String getmail(HttpSession session,String checkaccount ) {
	UserVo check=userService.findOne(checkaccount);
	if(check!=null) {
		check.setStatus("user");
		userService.save(check);
		session.setAttribute("user", check);
		return "indexMain";
	}
	session.setAttribute("vertifimail", "user");
	session.setAttribute("useraccount", checkaccount);
	return "usersignup";
}
	





		
		
		
		
	}


