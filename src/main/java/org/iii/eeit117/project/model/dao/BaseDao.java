package org.iii.eeit117.project.model.dao;

import java.sql.Connection;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public abstract class BaseDao {
	
	protected String jndiName = "java:comp/env/jdbc/phone";

	protected Connection getConnection() throws Exception {
		Context ctx = new InitialContext();
		DataSource ds = (DataSource) ctx.lookup(jndiName);
		return ds.getConnection();
	}
	
	
	
}
