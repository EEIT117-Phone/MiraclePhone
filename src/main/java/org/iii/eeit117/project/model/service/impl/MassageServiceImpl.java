package org.iii.eeit117.project.model.service.impl;

import java.util.List;

import org.iii.eeit117.project.model.dao.BaseDao;
import org.iii.eeit117.project.model.dao.MassageDao;
import org.iii.eeit117.project.model.service.MassageService;
import org.iii.eeit117.project.model.vo.MassageVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MassageServiceImpl extends BaseServiceImpl<MassageVo, Integer> implements MassageService {

	@Autowired
	private MassageDao massageDao;

	@Override
	public BaseDao<MassageVo, Integer> getDao() {
		return massageDao;
	}

	@Override
	public List<MassageVo> findByProductId(Integer productId) {
		return massageDao.findByAndCondition("productId", productId);
	}

}
