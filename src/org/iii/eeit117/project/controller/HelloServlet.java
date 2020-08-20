package org.iii.eeit117.project.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.iii.eeit117.project.model.service.HelloService;
import org.iii.eeit117.project.model.service.impl.HelloServiceImpl;
import org.iii.eeit117.project.model.util.StringUtil;

@WebServlet("/hello")
public class HelloServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = (String) req.getParameter("name");
		HelloService helloService = new HelloServiceImpl();
		
		if (StringUtil.isEmpty(name)) {
			name = "無名氏";
		}
		resp.setContentType("text/html; charset=UTF-8");
		resp.getOutputStream().write(helloService.sayHello(name).getBytes());
	
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
	
}
