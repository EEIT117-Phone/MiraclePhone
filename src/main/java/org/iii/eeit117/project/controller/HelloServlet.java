package org.iii.eeit117.project.controller;

import java.io.IOException;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.iii.eeit117.project.model.data.HelloTypeEnum;
import org.iii.eeit117.project.model.service.HelloService;
import org.iii.eeit117.project.model.service.impl.HelloServiceImpl;
import org.iii.eeit117.project.model.util.StringUtil;
import org.iii.eeit117.project.model.vo.HelloVo;
import org.iii.eeit117.project.search.HelloSearchBean;

@WebServlet("/hello")
public class HelloServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	private HelloService helloService = new HelloServiceImpl();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String page = req.getParameter("page");
		
		req.setAttribute("types", HelloTypeEnum.values());
		
		String pageName = "/WEB-INF/jsp/hello/hello.jsp";
		
		if ("insert".equals(page)) {
			pageName = "/WEB-INF/jsp/hello/helloInsert.jsp";
		} else if ("update".equals(page)) {
			String idStr = req.getParameter("id");
			if (StringUtil.isNonEmpty(idStr)) {
				req.setAttribute("result", helloService.findOne(Integer.valueOf(idStr)));
			}
			pageName = "/WEB-INF/jsp/hello/helloUpdate.jsp";
		} else if ("delete".equals(page)) {
			doDelete(req, resp);
		}
		req.getRequestDispatcher(pageName).forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			req.setCharacterEncoding("UTF-8");
			String action = req.getParameter("action");
			
			req.setAttribute("types", HelloTypeEnum.values());
			
			if ("search".equals(action)) {
				doSearch(req, resp);
			} else if ("insert".equals(action)) {
				doInsert(req, resp);
			} else if ("update".equals(action)) {
				doUpdate(req, resp);
			} 
			req.getRequestDispatcher("/WEB-INF/jsp/hello/hello.jsp").forward(req, resp);
		} catch (Exception e) {
			e.printStackTrace();
			req.getRequestDispatcher("/WEB-INF/jsp/error/error.jsp").forward(req, resp);
		}
	}
	
	public void doSearch(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HelloSearchBean searchBean = new HelloSearchBean();
		String name = req.getParameter("name");
		String enName = req.getParameter("enName");
		String ageStr =  req.getParameter("age");
		String[] typeStrs = req.getParameterValues("type");
		
		searchBean.setName(name);
		searchBean.setEnName(enName);
		
		if (StringUtil.isNonEmpty(ageStr)) {
			searchBean.setAge(Integer.valueOf(ageStr));
		}
		
		if (typeStrs != null) {
			HelloTypeEnum[] types = new HelloTypeEnum[typeStrs.length];
			for (int i = 0; i < typeStrs.length; i++) {
				types[i] = HelloTypeEnum.valueOf(typeStrs[i]);
			}
			searchBean.setTypes(types);
		}
		
		req.setAttribute("results", helloService.search(searchBean));
		
	}
	
	public void doInsert(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HelloVo helloVo = new HelloVo();
		String name = req.getParameter("name");
		String enName = req.getParameter("enName");
		String ageStr =  req.getParameter("age");
		String typeStr = req.getParameter("type");
		
		helloVo.setName(name);
		helloVo.setEnName(enName);
		
		if (StringUtil.isNonEmpty(ageStr)) {
			helloVo.setAge(Integer.valueOf(ageStr));
		}
		
		if (typeStr != null) {
			helloVo.setType(HelloTypeEnum.valueOf(typeStr));
		}
		
		helloService.save(helloVo);
	}
	
	public void doUpdate(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HelloVo helloVo = new HelloVo();
		String idStr = req.getParameter("id");
		String name = req.getParameter("name");
		String enName = req.getParameter("enName");
		String ageStr =  req.getParameter("age");
		String typeStr = req.getParameter("type");
		
		if (StringUtil.isNonEmpty(idStr)) {
			helloVo.setId(Integer.valueOf(idStr));
		}
		
		helloVo.setName(name);
		helloVo.setEnName(enName);
		
		if (StringUtil.isNonEmpty(ageStr)) {
			helloVo.setAge(Integer.valueOf(ageStr));
		}
		
		if (typeStr != null) {
			helloVo.setType(HelloTypeEnum.valueOf(typeStr));
		}
		
		helloService.save(helloVo);
	}
	
	public void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String idStr = req.getParameter("id");
		if (StringUtil.isNonEmpty(idStr)) {
			HelloVo helloVo = new HelloVo();
			helloVo.setId(Integer.valueOf(idStr));
			helloService.delete(helloVo);
		}
	}
	
}
