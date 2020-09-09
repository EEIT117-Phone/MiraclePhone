package org.iii.eeit117.project.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.iii.eeit117.project.model.service.OrderInfoService;
import org.iii.eeit117.project.model.service.ProductService;
import org.iii.eeit117.project.model.vo.ProductVo;
import org.iii.eeit117.project.model.vo.OrderInfoVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value = "/" + CartController.MODULE_NAME)
public class CartController {

	public static final String MODULE_NAME = "cart";

	public static final String MAIN_PAGE = MODULE_NAME + "Main";

	public static final String ORDERINFO_PAGE = MODULE_NAME + "OrderInfo";

	public static final String CONFIRM_PAGE = MODULE_NAME + "OrderConfirm";

	@Autowired
	private OrderInfoService orderinfoService;

	@Autowired
	private ProductService productService;

	@RequestMapping(value = { "", "/" }, method = RequestMethod.GET)
	public String cartItems(HttpSession httpSession, Model model, Integer deleteId) {
		if (httpSession.getAttribute("cart") == null) {
			model.addAttribute("message", "購物車目前尚無商品");
			return MAIN_PAGE;
		} else {
			Set<Integer> productIds = (Set<Integer>) httpSession.getAttribute("cart");
			List<ProductVo> cartItems = new LinkedList<>(); // javaBean List
			productIds.remove(deleteId);
			for (Integer id : productIds) {
				cartItems.add(productService.findOne(id));
			}
			httpSession.setAttribute("cartItem", cartItems);
			return MAIN_PAGE;
		}
	}

	@ResponseBody
	@RequestMapping(value = "/cartAdd", method = RequestMethod.GET)
	public int cartAdd(Integer productId, HttpSession httpSession) {
		Set<Integer> productIds = (Set<Integer>) httpSession.getAttribute("cart");
		if (productIds == null) {
			productIds = new HashSet<>();
			httpSession.setAttribute("cart", productIds);
		}
		productIds.add(productId);
		return productIds.size();
	}

	@RequestMapping(value = "/orderInfo", method = RequestMethod.GET)
	public String orderInfo(HttpSession httpSession, Model model, OrderInfoVo orderInfo) {
		List<ProductVo> ProductVos = (List<ProductVo>) httpSession.getAttribute("cartItem");
		model.addAttribute("orderInfo", orderInfo);
		return ORDERINFO_PAGE;
	}

	@RequestMapping(value = "/orderConfirm", method = RequestMethod.POST)
	public String orderConfirm(HttpSession httpSession, OrderInfoVo orderInfo, Model model) {
		model.addAttribute("orderInfo", orderInfo);
		List<ProductVo> ProductVos = (List<ProductVo>) httpSession.getAttribute("cartItem");
		String date = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
		orderInfo.setDate(date);
		Integer totalAmount = 0;
		for (ProductVo Vo : ProductVos) {
			totalAmount += Vo.getAmount();
		}
		orderInfo.setAmount(totalAmount);
		model.addAttribute("totalAmount", totalAmount);
		// Test 加入account
		httpSession.setAttribute("account", "ken001@yahoo.com");
		orderInfo.setAccount((String) httpSession.getAttribute("account"));

		orderinfoService.save(orderInfo);

		if ("匯款".equals(orderInfo.getPayInfo())) {
			model.addAttribute("payInfoMsg", "匯款帳號：玉山銀行 12345678");
		} else {
			model.addAttribute("payInfoMsg", "面交付款");
		}
		
		System.out.println(orderInfo.getShipInfo());
		if ("郵寄".equals(orderInfo.getShipInfo())) {
			
			model.addAttribute("shipInfoMsg", orderInfo.getShipAddress());
			
		} else if ("賣家面交".equals(orderInfo.getShipInfo())) {
			
			model.addAttribute("shipInfoMsg", "請與賣家確認面交地點");
			System.out.println("賣家面交");
		} else if ("7-11取貨".equals(orderInfo.getShipInfo())) {
			
			model.addAttribute("shipInfoMsg", "7-11 東門店");
		}
		else{
			model.addAttribute("shipInfoMsg", "全家 大安店");
		}
		return CONFIRM_PAGE;
	}
}
