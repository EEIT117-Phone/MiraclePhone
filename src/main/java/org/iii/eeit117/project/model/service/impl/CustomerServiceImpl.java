package org.iii.eeit117.project.model.service.impl;

import org.iii.eeit117.project.model.dao.BaseDao;
import org.iii.eeit117.project.model.dao.CustomerServiceDao;
import org.iii.eeit117.project.model.service.CustomerService;
import org.iii.eeit117.project.model.vo.CustomerServiceVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CustomerServiceImpl extends BaseServiceImpl<CustomerServiceVo, Integer> implements CustomerService {

	@Autowired
	private CustomerServiceDao customerServiceDao;

	@Override
	public BaseDao<CustomerServiceVo, Integer> getDao() {
		return customerServiceDao;
	}

}
