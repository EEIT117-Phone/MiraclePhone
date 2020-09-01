package org.iii.eeit117.project.model.util;

import javax.persistence.Table;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.cfg.Environment;
import org.reflections.Reflections;
import org.reflections.util.ConfigurationBuilder;

public class HibernateUtil {

	private static final String[] ORM_CLASS_PACKAGES = { "org.iii.eeit117.project.model.vo" };

	private static final SessionFactory FACTORY = createSessionFactory();

	public static SessionFactory getSessionFactory() {
		return FACTORY;
	}

	public static void closeSessionFactory() {
		if (FACTORY != null) {
			FACTORY.close();
		}
	}

	private static SessionFactory createSessionFactory() {
		return getConfig().buildSessionFactory();
	}
	
	private static Configuration getConfig() {
		Configuration config = new Configuration();
		config.setProperty(Environment.DIALECT, "org.hibernate.dialect.SQLServerDialect");
		config.setProperty(Environment.DATASOURCE, "java:comp/env/jdbc/phone");
		config.setProperty(Environment.CURRENT_SESSION_CONTEXT_CLASS, "thread");
		config.setProperty(Environment.SHOW_SQL, "true");
		config.setProperty(Environment.FORMAT_SQL, "true");
		
		Reflections reflections = new Reflections(new ConfigurationBuilder().forPackages(ORM_CLASS_PACKAGES));
		reflections.getTypesAnnotatedWith(Table.class).forEach(claz -> {
			config.addAnnotatedClass(claz);
		});
		return config;
	}

}
