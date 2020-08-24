package org.iii.eeit117.project.model.service.impl;

import java.sql.SQLException;
import java.util.List;

import org.iii.eeit117.project.model.dao.OrderInfoDao;
import org.iii.eeit117.project.model.service.CartService;
import org.iii.eeit117.project.model.vo.OrderInfo;

public class CartServiceImpl implements CartService{
	OrderInfoDao dao = new OrderInfoDao();
	@Override
	public OrderInfo cartInfo(String productId) {
		OrderInfo order = null;
		try {
			dao.createConn();
			order = dao.findCartInfo(productId);
			dao.closeConn();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return order;
	}

	@Override
	public List<OrderInfo> shipPayInfo(String productId,String paymentInfo,String shipInfo) {
		try {
			dao.createConn();
			dao.saveOrderInfo(productId, paymentInfo, shipInfo);
			dao.closeConn();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return null;
	}
	public static void main(String[] args) {
		
	}

}
