package org.iii.eeit117.project.model.dao;

import java.util.Random;

import org.iii.eeit117.project.model.data.HelloTypeEnum;
import org.iii.eeit117.project.model.vo.HelloVo;

public class HelloDao {

	private Random r = new Random();
	
	public HelloVo getOne(String name) {
		// 這只是一個demo，不連資料庫
		HelloVo helloVo = new HelloVo();
		helloVo.setName(name);
		helloVo.setAge(r.nextInt(100) + 1);
		helloVo.setEnName("En" + name);
		helloVo.setType(HelloTypeEnum.HELLO_MAN);
		
		return helloVo;
	}
}
