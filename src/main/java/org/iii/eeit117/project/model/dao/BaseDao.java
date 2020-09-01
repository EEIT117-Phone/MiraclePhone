package org.iii.eeit117.project.model.dao;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.util.List;

import javax.persistence.criteria.CriteriaQuery;

import org.hibernate.Session;
import org.iii.eeit117.project.model.util.HibernateUtil;
import org.iii.eeit117.project.search.BaseSearchBean;

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
		return getSession().createQuery(new BaseSearchBean<T>().getCriteriaQuery()).getResultList();
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
