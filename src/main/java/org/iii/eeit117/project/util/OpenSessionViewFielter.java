package org.iii.eeit117.project.util;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

public class OpenSessionViewFielter implements Filter {
	private Session session;

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		try {
			//任何請求，都會先經過Filter(類似Servlet)，做完chain.doFilter以上的事，Servlet才會收到請求
			//Servlet回復時，也會經過Filter，做完chain.doFilter以下的事，才會成功回復
			
			SessionFactory factory = HibernateSessionFactory.getSessionFactory();
			session = factory.getCurrentSession();
			session.beginTransaction();
			System.out.println("Transaction Begin.");

			chain.doFilter(request, response);

			session.getTransaction().commit();
		} catch (Exception e) {
			session.getTransaction().rollback();
			e.printStackTrace();
			System.out.println("Transaction Rollback.");
		} finally {
			System.out.println("Session Closed.");
		}
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

}
