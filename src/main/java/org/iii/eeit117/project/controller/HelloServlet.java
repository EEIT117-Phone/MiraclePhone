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
		String page = (String) req.getParameter("page");
		
		String pageName = "/WEB-INF/jsp/hello/hello.jsp";
		
		if ("search".equals(page)) {
			pageName = "/WEB-INF/jsp/hello/helloSearch.jsp";
		} else if ("findOne".equals(page)) {
			pageName = "/WEB-INF/jsp/hello/helloFindOne.jsp";
		} else if ("insert".equals(page)) {
			pageName = "/WEB-INF/jsp/hello/helloInsert.jsp";
		} else if ("update".equals(page)) {
			pageName = "/WEB-INF/jsp/hello/helloUpdate.jsp";
		} else if ("delete".equals(page)) {
			pageName = "/WEB-INF/jsp/hello/helloDelete.jsp";
		}
		req.getRequestDispatcher(pageName).forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = (String) req.getParameter("name");
		HelloService helloService = new HelloServiceImpl();
		
		if (StringUtil.isEmpty(name)) {
			name = "無名氏";
		}
		try {
			// 將jsp所需要的資料，塞到request attribute。供jsp存取
			req.setAttribute("name", name);
			req.setAttribute("hellos", helloService.findAll());
			req.getRequestDispatcher("/WEB-INF/jsp/hello/hello.jsp").forward(req, resp);
		} catch (Exception e) {
			e.printStackTrace();
			req.getRequestDispatcher("/WEB-INF/jsp/error/error.jsp").forward(req, resp);
		}
	}
	
}
