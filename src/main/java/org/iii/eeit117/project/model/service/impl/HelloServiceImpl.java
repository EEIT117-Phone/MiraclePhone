package org.iii.eeit117.project.model.service.impl;

import org.iii.eeit117.project.model.dao.BaseDao;
import org.iii.eeit117.project.model.dao.HelloDao;
import org.iii.eeit117.project.model.service.HelloService;
import org.iii.eeit117.project.model.vo.HelloVo;

public class HelloServiceImpl extends BaseServiceImpl<HelloVo> implements HelloService {

	private HelloDao helloDao;
	
	public HelloServiceImpl() {
		helloDao = new HelloDao();
	}

	@Override
	protected BaseDao<HelloVo> getDao() {
		return helloDao;
	}

}
