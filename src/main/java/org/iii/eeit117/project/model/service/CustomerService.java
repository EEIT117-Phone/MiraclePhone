package org.iii.eeit117.project.model.service;

import java.util.List;

import org.iii.eeit117.project.model.vo.CustomerServiceVo;

public interface CustomerService extends BaseService<CustomerServiceVo,Integer> {
	List<CustomerServiceVo> findUnResponse(String q1, String q2);
	public void saveResponse(String id, String response);
}
