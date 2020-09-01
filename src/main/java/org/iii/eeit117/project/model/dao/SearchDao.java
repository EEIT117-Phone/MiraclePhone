package org.iii.eeit117.project.model.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.iii.eeit117.project.model.vo.SellerProductVo;

public class SearchDao {
	private Connection conn;

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

	public ResultSet searchPhoneSort(SellerProductVo sv) throws SQLException {
		String sqlstr = "Select * from Advertise Where phoneSort='?'";
		PreparedStatement state = conn.prepareStatement(sqlstr);
		state.setString(1, sv.getPhoneSort());
		ResultSet rs = state.executeQuery();
		return rs;
	}

//	public ResultSet searchPhoneType(SellerProductVo sv) throws SQLException {
//		String sqlstr = "Select * from Advertise Where phoneType=?";
//		PreparedStatement state = conn.prepareStatement(sqlstr);
//		state.setString(1, sv.getPhoneType());
//		ResultSet rs = state.executeQuery();
//		return rs;
//	}
//
//	public ResultSet searchMemory(SellerProductVo sv) throws SQLException {
//		String sqlstr = "Select * from Advertise Where memory=?";
//		PreparedStatement state = conn.prepareStatement(sqlstr);
//		state.setString(1, sv.getMemory());
//		ResultSet rs = state.executeQuery();
//		return rs;
//	}
//
//	public ResultSet searchColor(SellerProductVo sv) throws SQLException {
//		String sqlstr = "Select * from Advertise Where color=?";
//		PreparedStatement state = conn.prepareStatement(sqlstr);
//		state.setString(1, sv.getColor());
//		ResultSet rs = state.executeQuery();
//		return rs;
//	}
//
//	public ResultSet searchAmount(SellerProductVo sv) throws SQLException {
//		String sqlstr = "Select * from Advertise Where amount<?";
//		PreparedStatement state = conn.prepareStatement(sqlstr);
//		state.setInt(1, sv.getAmount());
//		ResultSet rs = state.executeQuery();
//		return rs;
//	}

	public void closeConn() throws SQLException {
		if (conn != null) {
			conn.close();
			System.out.println("connection closed.");
		}

	}
}