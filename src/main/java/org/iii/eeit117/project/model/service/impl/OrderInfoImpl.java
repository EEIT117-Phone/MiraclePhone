package org.iii.eeit117.project.model.service.impl;

import org.iii.eeit117.project.model.dao.BaseDao;
import org.iii.eeit117.project.model.dao.OrderInfoDao;
import org.iii.eeit117.project.model.service.OrderInfoService;
import org.iii.eeit117.project.model.vo.OrderInfoVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OrderInfoImpl extends BaseServiceImpl<OrderInfoVo, Integer> implements OrderInfoService {

	@Autowired
	private OrderInfoDao orderInfoDao;

	@Override
	public BaseDao<OrderInfoVo, Integer> getDao() {
		return orderInfoDao;
	}

}
