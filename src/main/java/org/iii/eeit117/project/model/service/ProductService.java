package org.iii.eeit117.project.model.service;

import java.util.List;

import org.iii.eeit117.project.model.vo.ProductVo;


public interface ProductService extends BaseService<ProductVo,Integer> {
	public List<ProductVo> findByAccount(String account);
}
