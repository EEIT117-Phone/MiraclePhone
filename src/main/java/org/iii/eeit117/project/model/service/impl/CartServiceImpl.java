package org.iii.eeit117.project.model.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.hibernate.Session;
import org.hibernate.query.Query;
import org.iii.eeit117.project.model.dao.BaseDao;
import org.iii.eeit117.project.model.dao.CustomerServiceDao;
import org.iii.eeit117.project.model.service.CartService;
import org.iii.eeit117.project.model.service.CustomerService;
import org.iii.eeit117.project.model.service.EmailService;
import org.iii.eeit117.project.model.service.ProductService;
import org.iii.eeit117.project.model.service.UserService;
import org.iii.eeit117.project.model.util.HibernateUtil;
import org.iii.eeit117.project.model.util.StringUtil;
import org.iii.eeit117.project.model.vo.CartVo;
import org.iii.eeit117.project.model.vo.CustomerServiceVo;
import org.iii.eeit117.project.model.vo.OrderInfoVo;
import org.iii.eeit117.project.model.vo.ProductVo;
import org.iii.eeit117.project.model.vo.UserVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CartServiceImpl implements CartService {

	@Autowired
	private ProductService productService;
	@Autowired
	private UserService userService;
	@Autowired
	private EmailService emailService;

	@Override
	public Map<String, CartVo> getCartItems(Set<Integer> productIds) {
		Map<String, CartVo> cartItems = new HashMap<>();

		for (Integer id : productIds) {
			ProductVo productVo = productService.findOne(id);
			CartVo cartVo = new CartVo();

			String account = productVo.getAccount();
			UserVo userVo = userService.findOne(account);
			List<String> shipInfo = new LinkedList<>();
			if (userVo.getShipInfoFace() != null) {
				shipInfo.add("面交");
			}
			if (userVo.getShipInfoPost() != null) {
				shipInfo.add("郵寄");
			}
			List<String> payInfo = new LinkedList<>();
			if (userVo.getPayInfoFace() != null) {
				payInfo.add("面交");
			}
			if (userVo.getPayInfoRemit() != null) {
				payInfo.add("匯款");

			}
			cartVo.setAccount(account);
			cartVo.setPayInfo(payInfo);
			cartVo.setShipInfo(shipInfo);
			
			if (!cartItems.keySet().contains(cartVo.getAccount())) {
				List<ProductVo> productVos = new ArrayList<ProductVo>();
				productVos.add(productVo);
				cartVo.setProductVos(productVos);
				cartItems.put(cartVo.getAccount(), cartVo);
			}else {
				cartItems.get(account).getProductVos().add(productVo);
			}
		}
		return cartItems;

	}

	@Override
	public Integer GetTotalAmount(Set<Integer> productIds) {
		Integer totalAmount = 0;
		for (Integer id : productIds) {
			totalAmount += productService.findOne(id).getAmount();
		}
		return totalAmount;
	}

	@Override
	public void sendOrderConfirmMail(OrderInfoVo orderInfo){
		String subject = "訂單已成立";
		String text = "您的商品已售出，請盡快出貨!" ;
		if(StringUtil.isNonEmpty(orderInfo.getOrderContext())) {
			text += "\n客戶留言：" + orderInfo.getOrderContext();
		}
		Set<ProductVo> productVos = orderInfo.getProductVo();
		Set<String> mailSets = new HashSet<>();
		for (ProductVo productVo : productVos) {
			mailSets.add(productVo.getAccount());
		}
		for(String mail : mailSets) {
			emailService.sendSimpleMessage(mail, subject, text);
		}
	}

	@Override
	public void soldOut(Set<Integer> productIds) {
		for (Integer id : productIds) {
			ProductVo productVo = productService.findOne(id);
			productVo.setStatus("已售出");
			productService.save(productVo);
		}
	}
}
