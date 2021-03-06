package org.iii.eeit117.project.model.dao;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

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
	
	public List<T> findByAndCondition(String field, Object val) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		CriteriaBuilder builder = session.getCriteriaBuilder();
		CriteriaQuery<T> query = builder.createQuery(getTypeParameterClass());
		Root<T> root = query.from(getTypeParameterClass());
		query.where(builder.and(builder.equal(root.get(field), val)));
		return getSession().createQuery(query).getResultList();
	}
	
	public Long countByAndCondition(String field, Object val) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		CriteriaBuilder builder = session.getCriteriaBuilder();
		CriteriaQuery<Long> query = builder.createQuery(Long.class);
		Root<T> root = query.from(getTypeParameterClass());
		query.select(builder.count(root));
		query.where(builder.and(builder.equal(root.get(field), val)));
		return getSession().createQuery(query).getSingleResult();
	}
	
	public List<T> findAll() {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		CriteriaBuilder builder = session.getCriteriaBuilder();
		CriteriaQuery<T> query = builder.createQuery(getTypeParameterClass());
		query.from(getTypeParameterClass());
		return session.createQuery(query).getResultList();
	}
	
	public T save(T obj) {
		getSession().saveOrUpdate(obj);
		return obj;
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
