package org.iii.eeit117.project.model.service;

import java.util.List;

import org.iii.eeit117.project.model.vo.OrderInfoVo;

public interface OrderInfoService extends BaseService<OrderInfoVo,Integer> {
	List<OrderInfoVo> findByAccount1(String account);
}
