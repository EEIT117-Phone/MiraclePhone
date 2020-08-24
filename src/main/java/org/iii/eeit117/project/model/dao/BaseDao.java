package org.iii.eeit117.project.model.dao;

import java.lang.reflect.Field;
import java.lang.reflect.ParameterizedType;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.stream.Collectors;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import org.iii.eeit117.project.model.util.ColumnFormatUtil;

public abstract class BaseDao<T> {
	
	private String jndiName = "java:comp/env/jdbc/phone";

	private Class<T> typeParameterClass;
	
	private String tableName;
	
	private String primaryKeyCol;
	
	private String primaryKeyField;
	
	private Field[] fields;
	
	private String[] cols;
	
	protected BaseDao() {
		typeParameterClass = getTypeParameterClass();
		tableName = getTableName();
		primaryKeyField = typeParameterClass.getDeclaredFields()[0].getName();
		primaryKeyCol = ColumnFormatUtil.fieldToCol(primaryKeyField);
		Field[] allFields = typeParameterClass.getDeclaredFields();
		fields = new Field[allFields.length - 1];
		cols = new String[allFields.length - 1];
		for (int i = 1; i < allFields.length; i++) {
			String fieldName = allFields[i].getName();
			if (fieldName.equals(primaryKeyField)) {
				continue;
			}
			fields[i - 1] = allFields[i];
			cols[i - 1] = ColumnFormatUtil.fieldToCol(fieldName);
		}
	}
	
	protected Connection getConnection() throws Exception {
		Context ctx = new InitialContext();
		DataSource ds = (DataSource) ctx.lookup(jndiName);
		return ds.getConnection();
	}
	
	
	public List<T> queryAll() throws Exception {
		List<T> result = new ArrayList<>();
		try (Connection conn = getConnection(); PreparedStatement stmt = conn.prepareStatement(getQueryAllSql());) {
			ResultSet resultSet = stmt.executeQuery();
			Map<String,String> colMap = getColMapping(resultSet);
			while (resultSet.next()) {
				result.add(entity(colMap, resultSet));
			}
		}
		return result;
	}
	
	public T queryOne(Integer id) throws Exception {
		try (Connection conn = getConnection(); PreparedStatement stmt = conn.prepareStatement(getQueryOneSql());) {
			stmt.setObject(1, id);
			ResultSet resultSet = stmt.executeQuery();
			Map<String,String> colMap = getColMapping(resultSet);
			if (resultSet.next()) {
				return entity(colMap, resultSet);
			}
		}
		return null;
	}
	
	public int insert(T obj) throws Exception {
		try (Connection conn = getConnection(); PreparedStatement stmt = conn.prepareStatement(getInsertSql());) {
			for (int i = 1; i <= fields.length; i++) {
				Field f = fields[i - 1];
				f.setAccessible(true);
				if (f.getType().isEnum()) {
					stmt.setObject(i, f.get(obj).toString());
				} else {
					stmt.setObject(i, f.get(obj));
				}
			}
			return stmt.executeUpdate();
		}
	}
	
	public int update(T obj) throws Exception {
		try (Connection conn = getConnection(); PreparedStatement stmt = conn.prepareStatement(getUpdateSql());) {
			for (int i = 1; i <= fields.length; i++) {
				Field f = fields[i - 1];
				f.setAccessible(true);
				if (f.getType().isEnum()) {
					stmt.setObject(i, f.get(obj).toString());
				} else {
					stmt.setObject(i, f.get(obj));
				}
			}
			Field f = typeParameterClass.getDeclaredField(primaryKeyField);
			f.setAccessible(true);
			stmt.setObject(fields.length + 1, f.get(obj));
			return stmt.executeUpdate();
		}
	}
	
	public int delete(Integer id) throws Exception {
		try (Connection conn = getConnection(); PreparedStatement stmt = conn.prepareStatement(getDeleteSql());) {
			stmt.setObject(1, id);
			return stmt.executeUpdate();
		}
	}
	
	@SuppressWarnings("unchecked")
	private Class<T> getTypeParameterClass() {
		ParameterizedType paramType = (ParameterizedType) getClass().getGenericSuperclass();;
		return (Class<T>) paramType.getActualTypeArguments()[0];
	}
	
	private String getTableName() {
		return getTypeParameterClass().getSimpleName().toUpperCase().replace("VO", "");
	}
	
	private String getQueryAllSql() {
		return "SELECT * FROM " + tableName;
	}
	
	private String getQueryOneSql() {
		return "SELECT * FROM " + tableName + " WHERE " + primaryKeyCol + "=?";
	}
	
	private String getInsertSql() {
		return "INSERT INTO " + tableName + "(" + String.join(",", cols) + ")" + " VALUES(" + ColumnFormatUtil.getPlaceHolders(cols.length) + ")";
	}
	
	private String getUpdateSql() {
		return "UPDATE " + tableName + " SET " +  Arrays.asList(cols).stream().map(col -> col + "=?").collect(Collectors.joining(",")) + " WHERE " + primaryKeyCol + "=?";
	}
	
	private String getDeleteSql() {
		return "DELETE FROM " + tableName + " WHERE " + primaryKeyCol + "=?";
	}
	
	private Map<String,String> getColMapping(ResultSet resultSet) throws Exception {
		Map<String,String> colMap = new HashMap<>();
		ResultSetMetaData rsmd = resultSet.getMetaData();
		for (int i = 1; i <= rsmd.getColumnCount(); i++) {
			String cL = rsmd.getColumnLabel(i);
			colMap.put(cL, ColumnFormatUtil.colToField(cL));
		}
		return colMap;
	}
	
	protected T entity(Map<String,String> colMap, ResultSet resultSet) throws Exception {
		T obj = typeParameterClass.newInstance();
		for (Entry<String, String> entry : colMap.entrySet()) {
			Object v = resultSet.getObject(entry.getKey());
			Field f = typeParameterClass.getDeclaredField(entry.getValue());
			f.setAccessible(true);
			if (f.getType().isEnum()) {
				for (Object o : f.getType().getEnumConstants()) {
					if (o.toString().equals(v.toString())) {
						v = o;
						break;
					}
				}
			}
			f.set(obj, v);
		}
		return obj;
	}
	
}
