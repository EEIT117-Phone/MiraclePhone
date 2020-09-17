package org.iii.eeit117.project.model.service;

import javax.mail.MessagingException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;



public interface EmailService {
	
	
	
	public void sendSimpleMessage
	(
			String to, 
			String subject, 
			String text
	);
	
	
	public void sendMessageWithAttachment(
	String to, 
	String subject,
	String text, 
	String pathToAttachment
	) 
	throws MessagingException;
}
