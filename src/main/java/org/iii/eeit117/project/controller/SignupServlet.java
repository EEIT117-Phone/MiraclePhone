package org.iii.eeit117.project.controller;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
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

/**
 * 
 * @author ken
 *
 */

@WebServlet("/signup")
public class SignupServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	private static SignupServlet jdbc = new SignupServlet();
	private static Connection conn;

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/WEB-INF/jsp/login/signup.jsp").forward(req, resp);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		String useraccount = req.getParameter("account");
		String userpassword = req.getParameter("password");
		String useridnumber = req.getParameter("idnumber");
		String userbirth = req.getParameter("birth");
		String username = req.getParameter("chinesename");
		String userage = req.getParameter("age");
		String usersex = req.getParameter("sexchoose");
		String usercounty = req.getParameter("county");
		String userdistrict = req.getParameter("district");
		String userzipcode = req.getParameter("zipcode");
		String userbuyer = req.getParameter("buyer");
		String userseller = req.getParameter("seller");
		PrintWriter out02 = resp.getWriter();
		String ogphoto = req.getParameter("file-photo");
		System.out.println(ogphoto);
		String userphoto = "C:/Users/k9182/Desktop/pic/" + ogphoto;
		try {
			jdbc.makeUsers(useraccount, userpassword, useridnumber, usersex, username, userage, usercounty,
					userdistrict, userzipcode, userbuyer, userseller, userbirth, userphoto);

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	private boolean createConn() {
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			String urlstr = "jdbc:sqlserver://localhost:1433;databaseName=Data_base;user=sa;password=password";
			conn = DriverManager.getConnection(urlstr);
			boolean status = !conn.isClosed();
			System.out.println("Connction open status:" + status);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public void makeUsers(String useraccount, String userpassword, String useridnumber, String usersex, String username,
			String userage, String usercounty, String userdistrict, String userzipcode, String userbuyer,
			String userseller, String userbirth, String userphoto) throws SQLException {
		if (createConn()) {
			String sqlstr = "INSERT INTO UserTable(useraccount,userpassword,useridnumber,usersex,username,userage,usercounty,userdistrict,userzipcode,userbuyer,userseller,userbirth,userphoto) Values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement preState = conn.prepareStatement(sqlstr);
			preState.setString(1, useraccount);
			preState.setString(2, userpassword);
			preState.setString(3, useridnumber);
			preState.setString(4, usersex);
			preState.setString(5, username);
			preState.setString(6, userage);
			preState.setString(7, usercounty);
			preState.setString(8, userdistrict);
			preState.setString(9, userzipcode);
			preState.setString(10, userbuyer);
			preState.setString(11, userseller);
			preState.setString(12, userbirth);
			preState.setString(13, userphoto);
			ResultSet rs = preState.executeQuery();
			rs.close();

		}

	}

	public String saveimage(String imgplace) throws IOException {
		InputStream is = new FileInputStream(imgplace);
		InputStreamReader isr = new InputStreamReader(is);
		BufferedReader br = new BufferedReader(isr);
		String data = null;
		String send_data = null;
		while ((data = br.readLine()) != null) {
			send_data = send_data + data;
		}
		br.close();
		return send_data;

	}

	public boolean checkaccount(String account) throws SQLException {
		String sqlstr = "SELECT *form UserTable where useraccount=?";
		PreparedStatement preState = conn.prepareStatement(sqlstr);
		preState.setString(1, account);
		ResultSet rs = preState.executeQuery();
		if (rs.next()) {
			return true;
		} else {
			return false;
		}
	}

}
