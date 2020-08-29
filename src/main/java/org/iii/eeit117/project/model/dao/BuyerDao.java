package org.iii.eeit117.project.model.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.iii.eeit117.project.model.vo.BuyerVo;

public class BuyerDao {
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
	
	public BuyerVo selectAll(int productid) throws SQLException {
		String sqlstr = "Select productId,phoneType,memory,color,phoneSort,phoneCondition,phoneWarranty,headPhone,socket,amount,sellReason,yearOfManufacture From Advertise2 Where productId = ?";
		PreparedStatement state = conn.prepareStatement(sqlstr);
		state.setInt(1, productid);
		ResultSet rs = state.executeQuery();
		BuyerVo b1 = null;
		if(rs.next()) {
			b1 = new BuyerVo();
			b1.setProductId(rs.getInt(1));
			b1.setPhoneType(rs.getString(2));
			b1.setMemory(rs.getString(3));
			b1.setColor(rs.getString(4));
			b1.setPhoneSort(rs.getString(5));
			b1.setPhoneCondition(rs.getString(6));
			b1.setPhoneWarranty(rs.getString(7));
			b1.setHeadPhone(rs.getString(8));
			b1.setSocket(rs.getString(9));
			b1.setAmount(rs.getInt(10));
			b1.setSellReason(rs.getString(11));
			b1.setYearOfManufacture(rs.getDate(12));
		}
		
		rs.close();
		state.close();
		
		return b1;
	}
	
	public boolean closeConn() throws SQLException {
		if (conn != null) {
			conn.close();
			System.out.println("connection closed.");
		}
		return true;
	}
}
