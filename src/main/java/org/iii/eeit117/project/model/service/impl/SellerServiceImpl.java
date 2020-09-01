package org.iii.eeit117.project.model.service.impl;

import org.hibernate.Session;

import org.iii.eeit117.project.model.dao.SellerProductDao;
import org.iii.eeit117.project.model.service.SellerService;

import org.iii.eeit117.project.model.vo.SellerProductVo;

public class SellerServiceImpl implements SellerService {

	private SellerProductDao sellerProductDao;

	public SellerServiceImpl(Session session) {
		sellerProductDao = new SellerProductDao(session);
	}

	@Override
	public SellerProductVo insert(SellerProductVo spv) {
		return sellerProductDao.insert(spv);
	}

}