package org.iii.eeit117.project.model.service.impl;

import org.iii.eeit117.project.model.dao.BaseDao;
import org.iii.eeit117.project.model.dao.HelloDao;
import org.iii.eeit117.project.model.service.HelloService;
import org.iii.eeit117.project.model.vo.HelloVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class HelloServiceImpl extends BaseServiceImpl<HelloVo, Integer> implements HelloService {

	@Autowired
	private HelloDao helloDao;

	@Override
	public BaseDao<HelloVo, Integer> getDao() {
		return helloDao;
	}

}
