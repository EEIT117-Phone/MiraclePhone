package org.iii.eeit117.project.model.service.impl;

import java.util.List;

import org.iii.eeit117.project.model.dao.BaseDao;
import org.iii.eeit117.project.model.service.BaseService;

public abstract class BaseServiceImpl<T> implements BaseService<T> {

	@Override
	public List<T> getAll() throws Exception {
		return getDao().queryAll();
	}

	@Override
	public T getOne(Integer id) throws Exception {
		return getDao().queryOne(id);
	}

	@Override
	public void save(T obj) throws Exception {
		getDao().insert(obj);
	}

	@Override
	public void update(T obj) throws Exception {
		getDao().update(obj);
	}

	@Override
	public void delete(Integer id) throws Exception {
		getDao().delete(id);
	}
	
	protected abstract BaseDao<T> getDao();
	
}
