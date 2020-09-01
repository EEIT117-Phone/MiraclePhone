package org.iii.eeit117.project.search;

import java.lang.reflect.ParameterizedType;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;

import org.hibernate.Session;
import org.iii.eeit117.project.model.util.HibernateUtil;

public class BaseSearchBean<T> {

	public CriteriaQuery<T> getCriteriaQuery() {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		CriteriaBuilder builder = session.getCriteriaBuilder();
		return  builder.createQuery(getTypeParameterClass());
	}
	
	@SuppressWarnings("unchecked")
	private Class<T> getTypeParameterClass() {
		ParameterizedType paramType = (ParameterizedType) getClass().getGenericSuperclass();
		return (Class<T>) paramType.getActualTypeArguments()[0];
	}
	
}
