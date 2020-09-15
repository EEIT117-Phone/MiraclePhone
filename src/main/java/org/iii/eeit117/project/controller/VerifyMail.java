package org.iii.eeit117.project.controller;

import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;

@Controller
public class VerifyMail {
	
	

	
	
	public SimpleMailMessage send() {
		
	SimpleMailMessage mainMessage=new SimpleMailMessage();
	mainMessage.setFrom("digitalken1127@gmail.com"); //發送者
	mainMessage.setTo("k918231524@gmail.com");//接受者
	mainMessage.setSubject("奇機銷售帳號驗證碼"); //寄件標題
	mainMessage.setText("您的驗證碼為：" + createRandomNum() +"，請輸入驗證碼完成驗證，（請勿向任何人提供您收到的驗證碼）");
	return mainMessage;
	}
	
public String createRandomNum() {
	String num = null;
	int i;
	for(i=0;i<6;i++) {
	int number=(int)(Math.random()*10+1);
	String numString=""+number;
	num+=numString;
	}
	return num;
	
}

public static void main(String[] args) {
	JavaMailSender javaMailSender = null;
	VerifyMail test=new VerifyMail();
	SimpleMailMessage testmail=test.send();
	javaMailSender.send(testmail);
	System.out.println("已寄出");
}


		
		
		
		
	}


