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


@WebServlet("/UsermakeServlet")
public class UsermakeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static  UsermakeServlet jdbc=new UsermakeServlet();
	private static Connection conn;
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String useraccount=request.getParameter("account");
		String userpassword=request.getParameter("password");
		String useridnumber=request.getParameter("idnumber");
		String userbirth=request.getParameter("birth");
		String username=request.getParameter("chinesename");
		String userage=request.getParameter("age");
		String usersex=request.getParameter("sexchoose");
		String usercounty=request.getParameter("county");
		String userdistrict=request.getParameter("district");
		String userzipcode=request.getParameter("zipcode");
		String userbuyer=request.getParameter("buyer");
		String userseller=request.getParameter("seller");
		PrintWriter out02=response.getWriter();
		String ogphoto=request.getParameter("file-photo");
		System.out.println(ogphoto);
		String userphoto= "C:/Users/k9182/Desktop/pic/"+ogphoto;
		try {
				jdbc.makeUsers(useraccount, userpassword, useridnumber, usersex, username, userage,usercounty,userdistrict,userzipcode,userbuyer,userseller,userbirth,userphoto);
				
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	 
private boolean createConn(){
		try 
			{
			 Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		     String urlstr = "jdbc:sqlserver://localhost:1433;databaseName=Data_base;user=sa;password=password";
		     conn = DriverManager.getConnection(urlstr);
		     boolean status = !conn.isClosed();
		     System.out.println("Connction open status:" + status);
		     return true;
		     }
			catch(Exception e) {
				e.printStackTrace();
				return false;
			}
}



public void makeUsers(String useraccount,String userpassword,String useridnumber,String usersex,String username,String userage, String usercounty, String userdistrict, String userzipcode,String userbuyer,String userseller,String userbirth, String userphoto) throws SQLException {
	if(createConn()) {
	    String sqlstr = "INSERT INTO UserTable(useraccount,userpassword,useridnumber,usersex,username,userage,usercounty,userdistrict,userzipcode,userbuyer,userseller,userbirth,userphoto) Values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
	    PreparedStatement preState = conn.prepareStatement(sqlstr);
	    preState.setString(1,useraccount);
	    preState.setString(2,userpassword);
	    preState.setString(3,useridnumber);
	    preState.setString(4,usersex);
	    preState.setString(5,username);
	    preState.setString(6,userage);
	    preState.setString(7,usercounty);
	    preState.setString(8,userdistrict);
	    preState.setString(9,userzipcode);
	    preState.setString(10,userbuyer);
	    preState.setString(11,userseller);
	    preState.setString(12,userbirth);
	    preState.setString(13,userphoto);
	    ResultSet rs = preState.executeQuery();
		rs.close();
		
	}
	
	
	
}
public String saveimage(String imgplace) throws IOException {
	InputStream is = new FileInputStream(imgplace);
	InputStreamReader isr = new InputStreamReader(is);
	BufferedReader br = new BufferedReader(isr);
	String data=null;
	String send_data=null;
	while((data=br.readLine())!=null) {
		System.out.println("�C�@��:"+data);
		send_data=send_data+data;
	}
	br.close();
	return send_data;
	
}
public boolean checkaccount(String account) throws SQLException{
	String sqlstr = "SELECT *form UserTable where useraccount=?";
    PreparedStatement preState = conn.prepareStatement(sqlstr);
    preState.setString(1, account);
    ResultSet rs = preState.executeQuery();
    if(rs.next()) {
    	return true;
    }
    else {
    	return false;
    }
}

}
