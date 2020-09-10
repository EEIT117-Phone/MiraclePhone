package org.iii.eeit117.project.model.service.impl;

import java.io.Serializable;
import java.util.Collections;
import java.util.List;

import org.iii.eeit117.project.model.dao.BaseDao;
import org.iii.eeit117.project.model.service.BaseService;
import org.iii.eeit117.project.search.BaseSearchBean;

public abstract class BaseServiceImpl<T, E extends Serializable> implements BaseService<T, E> {

	public abstract BaseDao<T, E> getDao();

	@Override
	public List<T> search(BaseSearchBean<T> searchBean) {
		if (searchBean.getCriteriaQuery() != null) {
			return getDao().findBy(searchBean.getCriteriaQuery());
		}
		return Collections.emptyList();
	}

	@Override
	public List<T> findAll() {
		return getDao().findAll();
	}

	@Override
	public T findOne(E id) {
		return getDao().findOne(id);
	}

	@Override
	public T save(T obj) {
		return getDao().save(obj);
	}

	@Override
	public void delete(T obj) {
		getDao().delete(obj);
	}
}
