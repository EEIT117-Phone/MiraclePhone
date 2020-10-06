package org.iii.eeit117.project.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.iii.eeit117.project.model.service.CartService;
import org.iii.eeit117.project.model.service.EmailService;
import org.iii.eeit117.project.model.service.OrderInfoService;
import org.iii.eeit117.project.model.service.ProductService;
import org.iii.eeit117.project.model.util.StringUtil;
import org.iii.eeit117.project.model.vo.ProductVo;
import org.iii.eeit117.project.model.vo.UserVo;
import org.iii.eeit117.project.model.vo.CartVo;
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
	private CartService cartService;
	
	@Autowired
	private ProductService productService;

	@RequestMapping(value = "/item", method = RequestMethod.GET)
	public String cartItems(HttpSession httpSession, Model model, Integer deleteId) {
		Set<Integer> productIds = (Set<Integer>) httpSession.getAttribute("cart");
		if (productIds==null||productIds.isEmpty()) {
			model.addAttribute("message", "購物車目前尚無商品");
			return MAIN_PAGE;
		} else {
			productIds.remove(deleteId);
			Map<String, CartVo> cartItemMap = cartService.getCartItems(productIds);
			httpSession.setAttribute("cartItems", cartItemMap.values());
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
		model.addAttribute("orderInfo", orderInfo);

		return ORDERINFO_PAGE;
	}

	@RequestMapping(value = "/orderConfirm", method = RequestMethod.POST)
	public String orderConfirm(HttpSession httpSession, OrderInfoVo orderInfo, Model model) {
		Set<Integer> productIds = (Set<Integer>) httpSession.getAttribute("cart");
		model.addAttribute("orderInfo", orderInfo);

		String date = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
		orderInfo.setDate(date);
		orderInfo.setAmount(cartService.GetTotalAmount(productIds));
		UserVo userVo = (UserVo) httpSession.getAttribute("user");
		orderInfo.setAccount((String) userVo.getAccount());
		//oneToMany
		Set<ProductVo> products = new HashSet<>();
		for (Integer productId : productIds) {
			ProductVo product = productService.findOne(productId);
			product.setOrderInfoVO(orderInfo);
			products.add(product);
		}
		orderInfo.setProductVo(products);
		
		for(ProductVo eachProduct:products) {
			orderInfo.setPic1(eachProduct.getPic1());
			orderInfo.setPhoneType(eachProduct.getPhoneType());
			}

		if (StringUtil.isEmpty(orderInfo.getShipInfo())) {
			orderinfoService.save(orderInfo);
		}

		if ("匯款並郵寄".equals(orderInfo.getShipInfo())) {
			model.addAttribute("payInfoMsg", "匯款帳號：" + userVo.getBankaccount());
		} else {
			model.addAttribute("payInfoMsg", "面交");
		}

		if ("匯款並郵寄".equals(orderInfo.getShipInfo())) {
			model.addAttribute("shipInfoMsg", orderInfo.getShipAddress());
		} else if ("面交".equals(orderInfo.getShipInfo())) {
			model.addAttribute("shipInfoMsg", "請與賣家確認面交地點");
		}
		
		//商品售出後更改status為"已售出"，
		cartService.soldOut(productIds);
		
		cartService.sendOrderConfirmMail(orderInfo);
		model.addAttribute("cartItems", httpSession.getAttribute("cartItems"));
		httpSession.removeAttribute("cartItems");
		httpSession.removeAttribute("cart");
		return CONFIRM_PAGE;
	}
}
