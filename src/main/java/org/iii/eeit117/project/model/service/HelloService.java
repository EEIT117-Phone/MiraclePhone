package org.iii.eeit117.project.model.service;

import java.util.List;

import org.iii.eeit117.project.model.vo.HelloVo;

public interface HelloService {

	public List<HelloVo> listAll() throws Exception;
}
