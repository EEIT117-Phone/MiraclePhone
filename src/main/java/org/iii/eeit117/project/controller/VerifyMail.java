package org.iii.eeit117.project.controller;

import org.iii.eeit117.project.model.service.EmailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class VerifyMail {
	
	@Autowired
	public EmailService emailService;
	
	
@ResponseBody
@RequestMapping(value = "vertifimail", method = RequestMethod.GET)
public String send(String checkaccount) {
	System.out.println(checkaccount);
	emailService.sendSimpleMessage(
		"k918231524@gmail.com", 
		"測試信", 
		"你好啊"
		);
		return "vertifyletter has been send";

	}
	





		
		
		
		
	}


