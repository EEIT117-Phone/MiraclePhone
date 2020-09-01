package org.iii.eeit117.project.util;
//implements ServletContextListener
//註冊@WebListener
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
//監聽server啟動關閉時，自動getSessionFactory. closeSessionFactory


@WebListener
public class SessionFactoryListener implements ServletContextListener {

	@Override
	public void contextInitialized(ServletContextEvent sce) {
		//呼叫HibernateUtil，自動createSessionFactory
		//HibernateUtil.getSessionFactory不用new，因為他是static
		HibernateSessionFactory.getSessionFactory();
		System.out.println("Session factory created!");
	}

	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		HibernateSessionFactory.closeSessionFactory();
		System.out.println("Session factory destory!");
	}
}
