package org.iii.eeit117.project.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.iii.eeit117.project.model.dao.HelloDaoHibernate;
import org.iii.eeit117.project.model.vo.HelloVo;



@WebServlet("/hello2")
public class HelloServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processAction(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processAction(request, response);
	}


	private void processAction(HttpServletRequest request, HttpServletResponse response) {
		HelloDaoHibernate hdao = new HelloDaoHibernate();
		try {
			List<HelloVo> Hello = hdao.findAll();
			System.out.println(Hello);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
