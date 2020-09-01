package org.iii.eeit117.project.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.iii.eeit117.project.model.data.HelloTypeEnum;
import org.iii.eeit117.project.model.vo.HelloVo;

public class HelloDao extends BaseDao {
	
	public List<HelloVo> findAll() throws Exception {
		List<HelloVo> result = new ArrayList<>();
		String sql = "SELECT * FROM HELLO";
		try (Connection conn = getConnection(); PreparedStatement stmt = conn.prepareStatement(sql);) {
			ResultSet resultSet = stmt.executeQuery();
			while (resultSet.next()) {
				result.add(entity(resultSet));
			}
		}
		return result;
	}
	
	private HelloVo entity(ResultSet resultSet) throws SQLException {
		HelloVo helloVo = new HelloVo();
		helloVo.setName(resultSet.getString(1));
		helloVo.setEnName(resultSet.getString(2));
		helloVo.setAge(resultSet.getInt(3));
		helloVo.setType (HelloTypeEnum.valueOf(resultSet.getString(4)));
		return helloVo;
	}
}
