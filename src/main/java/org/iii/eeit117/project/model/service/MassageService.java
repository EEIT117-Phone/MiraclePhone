package org.iii.eeit117.project.model.service;

import java.util.List;

import org.iii.eeit117.project.model.vo.MassageVo;

public interface MassageService extends BaseService<MassageVo,Integer> {
	
	public List<MassageVo> findByProductId(Integer productId);
}
