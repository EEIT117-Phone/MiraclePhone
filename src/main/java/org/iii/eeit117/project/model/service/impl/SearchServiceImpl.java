package org.iii.eeit117.project.model.service.impl;

import org.iii.eeit117.project.model.dao.BaseDao;
import org.iii.eeit117.project.model.dao.SearchDao;
import org.iii.eeit117.project.model.service.SearchService;
import org.iii.eeit117.project.model.vo.SearchVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SearchServiceImpl extends BaseServiceImpl<SearchVo, Integer> implements SearchService {

	@Autowired
	private SearchDao searchDao;

	@Override
	public BaseDao<SearchVo, Integer> getDao() {
		return searchDao;
	}

}
