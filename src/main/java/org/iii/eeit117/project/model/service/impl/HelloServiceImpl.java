package org.iii.eeit117.project.model.service.impl;

import java.util.List;

import org.iii.eeit117.project.model.dao.HelloDao;
import org.iii.eeit117.project.model.service.HelloService;
import org.iii.eeit117.project.model.vo.HelloVo;

public class HelloServiceImpl implements HelloService {

	private HelloDao helloDao;
	
	public HelloServiceImpl() {
		helloDao = new HelloDao();
	}
	
	@Override
	public List<HelloVo> listAll() throws Exception {
		return helloDao.findAll();
	}

}



