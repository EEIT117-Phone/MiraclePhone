package org.iii.eeit117.project.config;

import javax.servlet.Filter;

import org.iii.eeit117.project.filter.AuthencationFilter;
import org.iii.eeit117.project.filter.OpenSessionViewFilter;
import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class AppInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {

	@Override
	protected Class<?>[] getRootConfigClasses() {
		return null;
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {
		return new Class[] { WebMvcConfig.class };
	}

	@Override
	protected String[] getServletMappings() {
		return new String[] { "/" };
	}

	@Override
	protected Filter[] getServletFilters() {
		return new Filter[] { authencationFilter(), characterEncodingFilter(), openSessionViewFilter() };
	}

	private CharacterEncodingFilter characterEncodingFilter() {
		CharacterEncodingFilter characterEncodingFilter = new CharacterEncodingFilter();
		characterEncodingFilter.setEncoding("UTF-8");
		characterEncodingFilter.setForceEncoding(true);
		return characterEncodingFilter;
	}

	private OpenSessionViewFilter openSessionViewFilter() {
		return new OpenSessionViewFilter();
	}
	
	private AuthencationFilter authencationFilter() {
		return new AuthencationFilter();
	}
}
