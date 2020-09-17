package org.iii.eeit117;

import org.iii.eeit117.project.controller.SpringConfig;
import org.iii.eeit117.project.model.service.impl.EmailServiceImpl;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;

public class Test {
	public static void main(String[] args) {
		Test test=new Test();
		SpringConfig config=new SpringConfig();
		JavaMailSender sender=config.getJavaMailSender();
		SimpleMailMessage message = new SimpleMailMessage(); 
		message.setFrom("digitalken1127@gmail.com");
		message.setTo("k918231524@gmail.com");
		message.setSubject("hello");
		message.setText("hello my friend");
		sender.send(message);
		
	}
}
