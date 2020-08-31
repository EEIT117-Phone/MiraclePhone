package org.iii.eeit117.project.controller;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.iii.eeit117.project.model.dao.BuyerDao;
import org.iii.eeit117.project.model.dao.QaDao;
import org.iii.eeit117.project.model.vo.BuyerVo;

@WebServlet("/buyer")
public class BuyerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	QaDao qa = new QaDao();
	BuyerDao bDao = new BuyerDao();
	BuyerVo bv = new BuyerVo();

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {
			bDao.createConn();
			bv = bDao.selectAll(10009);
			req.setAttribute("info", bv);
			req.getRequestDispatcher("/WEB-INF/jsp/buyer/buyer.jsp").forward(req, resp);
			bDao.closeConn();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			qa.createConn();
			String textarea = req.getParameter("textarea");
				qa.add(bv, textarea);
				ResultSet rs = qa.serch(bv);
				req.setAttribute("rs", rs);
			req.setAttribute("info", bv);
		req.getRequestDispatcher("/WEB-INF/jsp/buyer/buyer.jsp").forward(req, resp);
			rs.close();
			bDao.closeConn();
			qa.closeConn();
	}catch(

	SQLException e)
	{
		e.printStackTrace();
	}
	}
}
