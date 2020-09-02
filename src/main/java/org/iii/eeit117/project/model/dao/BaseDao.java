package org.iii.eeit117.project.model.dao;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;

import org.hibernate.Session;
import org.iii.eeit117.project.model.util.HibernateUtil;

public abstract class BaseDao<T, E extends Serializable> {
	
	protected Session getSession() {
		return HibernateUtil.getSessionFactory().getCurrentSession();
	}
	
	public T findOne(E id) {
		return getSession().get(getTypeParameterClass(), id);
	}
	
	public List<T> findBy(CriteriaQuery<T> query) {
		return getSession().createQuery(query).getResultList();
	}
	
	public List<T> findAll() {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		CriteriaBuilder builder = session.getCriteriaBuilder();
		CriteriaQuery<T> query = builder.createQuery(getTypeParameterClass());
		query.from(getTypeParameterClass());
		return session.createQuery(query).getResultList();
	}
	
	public void save(T obj) {
		getSession().saveOrUpdate(obj);
	}
	
	public void delete(T obj) {
		getSession().delete(obj);
	}
	
	@SuppressWarnings("unchecked")
	private Class<T> getTypeParameterClass() {
		ParameterizedType paramType = (ParameterizedType) getClass().getGenericSuperclass();
		return (Class<T>) paramType.getActualTypeArguments()[0];
	}
}
