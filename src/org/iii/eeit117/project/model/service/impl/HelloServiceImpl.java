package org.iii.eeit117.project.model.service.impl;

import org.iii.eeit117.project.model.dao.HelloDao;
import org.iii.eeit117.project.model.service.HelloService;
import org.iii.eeit117.project.model.vo.HelloVo;

public class HelloServiceImpl implements HelloService {

	private HelloDao helloDao;
	
	public HelloServiceImpl() {
		helloDao = new HelloDao();
	}
	
	@Override
	public String sayHello(String name) {
		HelloVo hello = helloDao.getOne(name);
		
		return String.format("%s your name is %s， english name is %s, age is %s"
				, hello.getType().getMsg()
				, hello.getName()
				, hello.getEnName()
				, hello.getAge());
	}

}
