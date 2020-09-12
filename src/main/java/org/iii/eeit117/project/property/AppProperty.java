package org.iii.eeit117.project.property;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;

@Configuration
@PropertySource("classpath:app.properties")
public class AppProperty {

	public static final String LOGIN_USER = "user";
	
	@Value("${fileRoot}")
	private String fileRoot;

	public String getFileRoot() {
		return fileRoot;
	}
	
}
