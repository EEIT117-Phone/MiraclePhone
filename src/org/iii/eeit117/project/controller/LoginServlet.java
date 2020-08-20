package twuserServletLogin;

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


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private  Connection conn = null;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			printAccPwd(request,response);
		} catch (IOException | SQLException e) {
		
			e.printStackTrace();
		}
	}
	

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			printAccPwd(request,response);
		} catch (IOException | SQLException e) {
			
			e.printStackTrace();
		}
	}
	public void printAccPwd(HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException {
		response.setContentType("text/html;charset=UTF-8");
		String urlstr = "jdbc:sqlserver://localhost:1433;databaseName=Data_base;user=sa;password=password";
	    conn = DriverManager.getConnection(urlstr);
		String sqlstr = "Select * From UserTable where(useraccount=? and userpassword=?)";
		String useraccount=request.getParameter("useraccount");
		String userpassword=request.getParameter("userpassword");
		PreparedStatement preState = conn.prepareStatement(sqlstr);
		preState.setString(1,useraccount);
		preState.setString(2,userpassword);
		ResultSet rs=preState.executeQuery();
		PrintWriter out=response.getWriter();
		
		boolean loginresult = rs.next();
		if(loginresult) {
			out.write("Login:ok<br/>");
			lookUsers(request,response);
		}
		else {
			out.write("Login:false");	
			}
		
	}
	private void lookUsers(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException  {
		String urlstr = "jdbc:sqlserver://localhost:1433;databaseName=Data_base;user=sa;password=password";
		response.setContentType("text/html;charset=UTF-8");
	    conn = DriverManager.getConnection(urlstr);
		String sqlstr = "Select * From UserTable ";
		PreparedStatement preState=conn.prepareStatement(sqlstr);
		ResultSet rs = preState.executeQuery();
		PrintWriter out=response.getWriter();
		int i;
		while(rs.next()) {
			out.write("<table>");
			out.write("<tr>");
			for(i=1;i<13;i++) {
			out.write("<td>"+rs.getString(i) +"</td>");
			}
			out.write("</tr>");
			out.write("</table>");
	    
		}
		out.close();
	    rs.close();
	    preState.close();

}
}
