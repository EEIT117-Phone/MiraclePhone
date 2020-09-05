package org.iii.eeit117.project.model.service.impl;

import org.iii.eeit117.project.model.dao.BaseDao;
import org.iii.eeit117.project.model.dao.BuyerDao;
import org.iii.eeit117.project.model.service.BuyerService;
import org.iii.eeit117.project.model.vo.BuyerVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BuyerServiceImpl extends BaseServiceImpl<BuyerVo, Integer> implements BuyerService{
	@Autowired
	private BuyerDao buyerDao;
	
	@Override
	public BaseDao<BuyerVo, Integer> getDao() {
		return buyerDao;
	}

}
