package org.iii.eeit117.project.model.dao;

import org.iii.eeit117.project.model.vo.SearchVo;
import org.springframework.stereotype.Component;

<<<<<<< HEAD
@Component
public class SearchDao extends BaseDao<SearchVo, Integer> {
}
=======
import org.iii.eeit117.project.model.vo.SellerVo;

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

	public ResultSet searchPhoneSort(SellerVo sv) throws SQLException {
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
>>>>>>> c91c32ec7eeaec65402e166837ade99a7d4ec58c
