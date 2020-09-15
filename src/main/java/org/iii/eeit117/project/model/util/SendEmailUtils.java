package org.iii.eeit117.project.model.util;

import java.util.Properties;

import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;



public class SendEmailUtils {

	
	public static void main(String[] args) {
		JavaMailSender sender=initJavaMailSender();
	}
	
	public static JavaMailSender initJavaMailSender() {
		Properties properties=new Properties();
		properties.setProperty("mail.debug", "true");
		properties.setProperty("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");  
        properties.setProperty("mail.smtp.auth", "true");  
        properties.put(" mail.smtp.timeout ", " 25000 ");
        
        JavaMailSenderImpl javaMailSender = new JavaMailSenderImpl();  
        javaMailSender.setJavaMailProperties(properties);  
        javaMailSender.setHost("localhost:8080");
        javaMailSender.setUsername("k918231524@gmail.com"); // 根据自己的情况,设置username
		javaMailSender.setPassword("k662184351"); // 根据自己的情况, 设置password
		javaMailSender.setPort(465);  
		javaMailSender.setDefaultEncoding("UTF-8"); 
		return javaMailSender;
		
	}
}
