package org.iii.eeit117.project.model.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.iii.eeit117.project.model.vo.BuyerVo;

public class QaDao {
	Connection conn;
	public boolean createConn() throws SQLException {
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			String urlstr = "jdbc:sqlserver://180.176.235.31;databaseName=MiraclePhone;user=sa;password=P@ssw0rd";
			conn = DriverManager.getConnection(urlstr);

			boolean status = !conn.isClosed();
			System.out.println("Connction open status:" + status);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	
	public void add(BuyerVo bv , String textarea) throws SQLException {
		String sqlstr = "Insert into QA(producid, textqa) values(?,?)";
		PreparedStatement state = conn.prepareStatement(sqlstr);
		state.setInt(1, bv.getProductId());
		state.setString(2, textarea);
		
		state.execute();
		state.close();
	}
	
	public ResultSet serch(BuyerVo bv) throws SQLException {
		String sqlstr = "Select * from QA Where producid=?";
		PreparedStatement state = conn.prepareStatement(sqlstr);
		state.setInt(1,bv.getProductId());
		ResultSet rs = state.executeQuery();
		return rs;
	}
	
	public void closeConn() throws SQLException {
		if(conn!=null) {
		   conn.close();
		   System.out.println("connection closed.");
		}

	}
}
