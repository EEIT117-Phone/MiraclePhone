package org.iii.eeit117.project.model.service;

import java.util.List;

import org.iii.eeit117.project.model.vo.CustomerServiceVo;

public interface CustomerService extends BaseService<CustomerServiceVo,Integer> {
	
	public List<CustomerServiceVo> findByAccount(String account);
	
}
