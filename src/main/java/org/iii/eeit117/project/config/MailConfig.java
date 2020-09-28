package org.iii.eeit117.project.config;

import java.util.Properties;


import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;

@Configuration
@ComponentScan(basePackages = { "org.iii.eeit117.project.config"})
@PropertySource("classpath:mail.properties")
public class MailConfig {
	
	@Value("${Host}")
	private String host;
	
	@Value("${Port}")
	private Integer port;
	
	@Value("${account}")
	private String username;
	
	@Value("${password}")
	private String password;
	
	@Value("${mail.transport.protocol}")
	private String mailprotocol;
	
	@Value("${mail.smtp.auth}")
	private boolean mailauth;
	
	@Value("${mail.smtp.starttls.enable}")
	private boolean mailenable;
	
	@Value("${mail.debug}")
	private boolean maildebug;
	
	@Value("${mail.smtp.ssl.trust}")
	private String mailtrust;
	
	
	@Bean 
	public JavaMailSender getJavaMailSender() {
		JavaMailSenderImpl mailSender = new JavaMailSenderImpl();
	    mailSender.setHost(host);
	    mailSender.setPort(port);
	    mailSender.setUsername(username);
	    mailSender.setPassword(password);
	    Properties props = mailSender.getJavaMailProperties();
	    props.put("mail.transport.protocol", mailprotocol);
	    props.put("mail.smtp.auth", mailauth);
	    props.put("mail.smtp.starttls.enable", mailenable);
	    props.put("mail.debug", maildebug);
	    props.put("mail.smtp.ssl.trust", mailtrust);
		return mailSender;
	}

}
