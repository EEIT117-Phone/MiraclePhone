package org.iii.eeit117.project.model.dao;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.iii.eeit117.project.model.vo.HelloVo;
import org.iii.eeit117.project.util.HibernateSessionFactory;


public class HelloDaoHibernate{
	SessionFactory factory = HibernateSessionFactory.getSessionFactory();
	Session session= factory.getCurrentSession();

	public List<HelloVo> findAll() throws Exception {
		Query<HelloVo> query = session.createQuery("from HelloVo", HelloVo.class);
		return query.list();
		
	}
	
	private HelloVo entity(HelloVo helloVo) throws SQLException {
		session.save(helloVo);
		return helloVo;
	}
}
