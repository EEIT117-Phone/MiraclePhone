package org.iii.eeit117.project.model.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.iii.eeit117.project.model.vo.OrderInfo;

public class OrderInfoDao {
	Connection conn;
	public OrderInfo findCartInfo(String id) throws SQLException {
		String sqlstr = "Select * From Product where productid =?";
		PreparedStatement state = conn.prepareStatement(sqlstr);
		state.setString(1, id);        
		ResultSet rs = state.executeQuery();
		OrderInfo order = new OrderInfo();
		while (rs.next()) {
			order.setProductName(rs.getString(2));
			order.setProductStorage(rs.getString(3));
			order.setPrice(rs.getInt(4));
			order.setSeller(rs.getString(5));
		}
		
		rs.close();
		state.close();
		return order;
	}
	public void saveOrderInfo(String productId, String paymentInfo, String shipInfo) throws SQLException {
		String sqlstr = "Insert Into OrderInfo(paymentInfo,shipInfo) Values(?,?,?)";
		PreparedStatement state = conn.prepareStatement(sqlstr);
		state.setString(1, productId);
		state.setString(2, paymentInfo);
		state.setString(3, shipInfo);
		
		state.execute();
		state.close();
		
	}

	public boolean createConn() throws SQLException {
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			String urlstr = "jdbc:sqlserver://localhost:1433;databaseName=LeonPower;user=sa;password=P@ssw0rd";
			conn = DriverManager.getConnection(urlstr);

			boolean status = !conn.isClosed();
			System.out.println("Connction open status:" + status);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public boolean closeConn() throws SQLException {
		if (conn != null) {
			conn.close();
			System.out.println("connection closed.");
		}
		return true;
	}
}
