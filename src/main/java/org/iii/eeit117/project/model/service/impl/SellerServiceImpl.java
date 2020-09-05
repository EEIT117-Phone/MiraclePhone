package org.iii.eeit117.project.model.service.impl;

import org.iii.eeit117.project.model.dao.BaseDao;
import org.iii.eeit117.project.model.dao.SellerDao;
import org.iii.eeit117.project.model.service.SellerService;
import org.iii.eeit117.project.model.vo.SellerVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SellerServiceImpl extends BaseServiceImpl<SellerVo, Integer> implements SellerService {

	@Autowired
	private SellerDao sellerDao;

	@Override
	public BaseDao<SellerVo, Integer> getDao() {
		return sellerDao;
	}

}
