package org.iii.eeit117.project.controller;

import org.iii.eeit117.project.model.service.EmailService;
import org.iii.eeit117.project.model.service.impl.EmailServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class VerifyMail {
	
	@Autowired
	public EmailService emailService;
	
@RequestMapping(value = "vertifimail", method = RequestMethod.GET)
public String send(String checkaccount) {
	emailService.sendSimpleMessage(
		"k918231524@gmail.com", 
		"測試信", 
		"你好啊"
		);
		return "vertifyletter has been send";

	}
	


public static void main(String[] args) {
	SpringConfig config=new SpringConfig();
	JavaMailSender sender=config.getJavaMailSender();
	EmailServiceImpl emailService=new EmailServiceImpl();
	SimpleMailMessage message=emailService.sendTestMessage("k918231524@gmail.com", "測試信",  "你好啊");
	sender.send(message);
	
	
}


		
		
		
		
	}


