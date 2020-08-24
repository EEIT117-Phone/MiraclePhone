package org.iii.eeit117.project.model.service;

import java.util.List;

public interface BaseService<T> {

	public List<T> getAll() throws Exception;
	
	public T getOne(Integer id) throws Exception;
	
	public void save(T obj) throws Exception;
	
	public void update(T obj) throws Exception;
	
	public void delete(Integer id) throws Exception;
}


