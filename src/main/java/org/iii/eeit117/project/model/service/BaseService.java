package org.iii.eeit117.project.model.service;

import java.io.Serializable;
import java.util.List;

import org.iii.eeit117.project.search.BaseSearchBean;

public interface BaseService<T, E extends Serializable> {

	public List<T> search(BaseSearchBean<T> searchBean);
	
	public List<T> findAll();
	
	public T findOne(E id);
	
	public void save(T obj);
	
	public void delete(T obj);
	
}
