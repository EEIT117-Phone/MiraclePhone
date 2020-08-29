package org.iii.eeit117.project.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.iii.eeit117.project.model.dao.BuyerDao;
import org.iii.eeit117.project.model.vo.BuyerVo;

@WebServlet("/buyer")
public class BuyerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		BuyerDao bDao = new BuyerDao();
		try {
			bDao.createConn();
			BuyerVo info = bDao.selectAll(10004);
			req.setAttribute("info", info);
			req.getRequestDispatcher("/WEB-INF/jsp/buyer/buyer.jsp").forward(req, resp);
			bDao.closeConn();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

}
