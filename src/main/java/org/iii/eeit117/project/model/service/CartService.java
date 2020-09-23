package org.iii.eeit117.project.model.service;

import java.util.List;
import java.util.Map;
import java.util.Set;

import org.iii.eeit117.project.model.vo.CartVo;
import org.iii.eeit117.project.model.vo.OrderInfoVo;
import org.iii.eeit117.project.model.vo.ProductVo;

public interface CartService {
	public Map<String, CartVo> getCartItems(Set<Integer> productIds);
	public Integer GetTotalAmount(Set<Integer> productIds);
	public void sendOrderConfirmMail(OrderInfoVo orderInfo);
	public void soldOut(Set<Integer> productIds);
}
