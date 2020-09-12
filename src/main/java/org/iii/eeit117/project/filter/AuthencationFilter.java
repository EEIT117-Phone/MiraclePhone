package org.iii.eeit117.project.filter;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.iii.eeit117.project.model.vo.UserVo;
import org.iii.eeit117.project.property.AppProperty;

public class AuthencationFilter implements Filter {
	
	public static final List<String> WHILE_LIST = Arrays.asList("/js", "/css", "/images", "/fs/img", "/index", "/user", "/search", "/buyer", "/contact");
	
	private String contextPath;
	
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse resp = (HttpServletResponse) response;
		HttpSession session = req.getSession();
		// 白名單檢查
		String uri = req.getRequestURI().replace(contextPath, "");
		
		if ("".equals(uri) || "/".equals(uri)) {
			chain.doFilter(request, response);
            return;
		}
		for (String white : WHILE_LIST) {
            if (uri.indexOf(white) != -1) {
            	chain.doFilter(request, response);
                return;
            }
		}
		
		// 驗證使用者是否登入
		UserVo user = (UserVo) session.getAttribute(AppProperty.LOGIN_USER);
        if (user != null) {
        	session.setAttribute(AppProperty.REDIRECT_URL, null);
        	chain.doFilter(request, response);
        } else {
        	String redirectUrl = uri + (req.getQueryString() == null ? "" : "?" + req.getQueryString());
        	session.setAttribute(AppProperty.REDIRECT_URL, redirectUrl);
        	resp.sendRedirect(contextPath + "/userlogin");
        	return;
        }
        
		
	}

	
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		contextPath = filterConfig.getServletContext().getContextPath();
	}

	@Override
	public void destroy() {
		
	}

}
