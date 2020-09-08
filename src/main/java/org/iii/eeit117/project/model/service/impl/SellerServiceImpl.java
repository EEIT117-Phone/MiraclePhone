package org.iii.eeit117.project.model.service.impl;

import org.iii.eeit117.project.model.dao.BaseDao;
import org.iii.eeit117.project.model.dao.SellerDao;
import org.iii.eeit117.project.model.service.SellerService;
import org.iii.eeit117.project.model.vo.ProductVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SellerServiceImpl extends BaseServiceImpl<ProductVo, Integer> implements SellerService {

	@Autowired
	private SellerDao sellerDao;

	@Override
	public BaseDao<ProductVo, Integer> getDao() {
		return sellerDao;
	}

}
