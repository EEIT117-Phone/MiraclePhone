package org.iii.eeit117.project.model.service.impl;

import java.util.List;

import org.iii.eeit117.project.model.dao.BaseDao;
import org.iii.eeit117.project.model.dao.ProductDao;
import org.iii.eeit117.project.model.service.ProductService;
import org.iii.eeit117.project.model.vo.ProductVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProductServiceImpl extends BaseServiceImpl<ProductVo, Integer> implements ProductService {

	@Override
	public List<ProductVo> findByAccount(String account) {
		return productDao.findByAndCondition("account", account);
	}
	
	@Override
	public Long countByAccount(String account) {
		return productDao.countByAndCondition("account", account);
	}

	@Autowired
	private ProductDao productDao;

	@Override
	public BaseDao<ProductVo, Integer> getDao() {
		return productDao;
	}

}
