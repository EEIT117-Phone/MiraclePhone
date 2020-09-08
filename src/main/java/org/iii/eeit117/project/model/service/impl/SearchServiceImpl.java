package org.iii.eeit117.project.model.service.impl;

import org.iii.eeit117.project.model.dao.BaseDao;
import org.iii.eeit117.project.model.dao.SearchDao;
import org.iii.eeit117.project.model.service.SearchService;
import org.iii.eeit117.project.model.vo.ProductVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SearchServiceImpl extends BaseServiceImpl<ProductVo, Integer> implements SearchService {

	@Autowired
	private SearchDao searchDao;

	@Override
	public BaseDao<ProductVo, Integer> getDao() {
		return searchDao;
	}

}
