package org.iii.eeit117.project.util;

import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

public class HibernateSessionFactory {
	//靜態方法，當HibernateUtil這個class檔建立時，就會createSessionFactory();
		private static final SessionFactory factory = createSessionFactory();

		private static SessionFactory createSessionFactory() {
			StandardServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder().configure().build();
			SessionFactory factory = new MetadataSources(serviceRegistry).buildMetadata().buildSessionFactory();
			return factory;
		}
		//getSessionFactory=取得上面create的session factory
		public static SessionFactory getSessionFactory() {
			return factory;
		}

		public static void closeSessionFactory() {
			if (factory != null) {
				factory.close();
			}
		}
}
