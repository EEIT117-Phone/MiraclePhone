package org.iii.eeit117.project.model.service;

import java.sql.SQLException;
import java.util.List;

import org.iii.eeit117.project.model.vo.OrderInfo;

public interface CartService {
	public OrderInfo cartInfo(String productId);
	public List<OrderInfo> shipPayInfo(String productId, String paymentInfo, String shipInfo);
	 
}
	