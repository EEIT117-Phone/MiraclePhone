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
	BuyerDao bDao = new BuyerDao();
	BuyerVo bv = new BuyerVo();
	QaDao qa = new QaDao();
	ResultSet rs;
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {
			req.setCharacterEncoding("UTF-8");
			qa.createConn();
			bDao.createConn();
			bv = bDao.selectAll(10013);
			rs = qa.serch(bv);
			req.setAttribute("rs", rs);	
			req.setAttribute("info", bv);
			req.getRequestDispatcher("/WEB-INF/jsp/buyer/buyer.jsp").forward(req, resp);
			bDao.closeConn();
			qa.closeConn();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			req.setCharacterEncoding("UTF-8");
			qa.createConn();
			String textarea = req.getParameter("textarea");
				qa.add(bv, textarea);
				rs = qa.serch(bv);
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
