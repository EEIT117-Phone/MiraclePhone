package org.iii.eeit117.project.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection conn = null;

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/WEB-INF/jsp/login/login.jsp").forward(req, resp);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			printAccPwd(req, resp);
		} catch (IOException | SQLException e) {
			e.printStackTrace();
		}
	}

	public void printAccPwd(HttpServletRequest req, HttpServletResponse resp) throws IOException, SQLException {
		resp.setContentType("text/html;charset=UTF-8");
		String urlstr = "jdbc:sqlserver://localhost:1433;databaseName=Data_base;user=sa;password=password";
		conn = DriverManager.getConnection(urlstr);
		String sqlstr = "Select * From UserTable where(useraccount=? and userpassword=?)";
		String useraccount = req.getParameter("useraccount");
		String userpassword = req.getParameter("userpassword");
		PreparedStatement preState = conn.prepareStatement(sqlstr);
		preState.setString(1, useraccount);
		preState.setString(2, userpassword);
		ResultSet rs = preState.executeQuery();
		PrintWriter out = resp.getWriter();

		boolean loginresult = rs.next();
		if (loginresult) {
			out.write("Login:ok<br/>");
			lookUsers(req, resp);
		} else {
			out.write("Login:false");
		}

	}

	private void lookUsers(HttpServletRequest req, HttpServletResponse resp) throws SQLException, IOException {
		String urlstr = "jdbc:sqlserver://localhost:1433;databaseName=Data_base;user=sa;password=password";
		resp.setContentType("text/html;charset=UTF-8");
		conn = DriverManager.getConnection(urlstr);
		String sqlstr = "Select * From UserTable ";
		PreparedStatement preState = conn.prepareStatement(sqlstr);
		ResultSet rs = preState.executeQuery();
		PrintWriter out = resp.getWriter();
		int i;
		while (rs.next()) {
			out.write("<table>");
			out.write("<tr>");
			for (i = 1; i < 13; i++) {
				out.write("<td>" + rs.getString(i) + "</td>");
			}
			out.write("</tr>");
			out.write("</table>");

		}
		out.close();
		rs.close();
		preState.close();

	}
}
