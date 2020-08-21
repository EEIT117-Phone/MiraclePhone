package org.iii.eeit117.project.model.dao;

import java.util.List;
import java.util.Random;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

import org.iii.eeit117.project.model.data.HelloTypeEnum;
import org.iii.eeit117.project.model.vo.HelloVo;

public class HelloDao {

	private Random r = new Random();
	
	public List<HelloVo> findAll(String name) {
		// 這只是一個demo，模擬從資料庫撈出多筆資料
		return IntStream.range(0, 5).mapToObj(i -> {
			HelloVo helloVo =  new HelloVo();
			helloVo.setName(name + i);
			helloVo.setAge(r.nextInt(100) + 1);
			helloVo.setEnName("En" + name + i);
			helloVo.setType(i % 2 == 0 ? HelloTypeEnum.HELLO_MAN : HelloTypeEnum.HELLO_WOMAN);
			return helloVo;
		}).collect(Collectors.toList());
	}
}
