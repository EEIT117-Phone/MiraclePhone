package org.iii.eeit117.project.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.iii.eeit117.project.model.data.HelloTypeEnum;
import org.iii.eeit117.project.model.service.BuyerService;
import org.iii.eeit117.project.model.service.OrderInfoService;
import org.iii.eeit117.project.model.vo.BuyerVo;
import org.iii.eeit117.project.model.vo.HelloVo;
import org.iii.eeit117.project.model.vo.OrderInfoVo;
import org.iii.eeit117.project.search.HelloSearchBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;

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
	private BuyerService buyerService;

	@RequestMapping(value = { "", "/" }, method = RequestMethod.GET)
	public String cartItems(HttpSession httpSession, Model model, Integer deleteId) {
		if (httpSession.getAttribute("cart") == null) {
			model.addAttribute("message", "購物車目前尚無商品");
			return MAIN_PAGE;
		} else {
			Set<Integer> productIds = (Set<Integer>) httpSession.getAttribute("cart");
			List<BuyerVo> cartItems = new LinkedList<>(); // javaBean List
			productIds.remove(deleteId);
			for (Integer id : productIds) {
				cartItems.add(buyerService.findOne(id));
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
	public String orderInfo(HttpSession httpSession, BuyerVo cartItems, Model model, String address, OrderInfoVo orderInfo) {
		List<BuyerVo> buyerVos = (List<BuyerVo>) httpSession.getAttribute("cartItem");
		Integer totalAmount = 0;
		for (BuyerVo Vo : buyerVos) {
			totalAmount+=Vo.getAmount();
		}
		model.addAttribute("totalAmount", totalAmount);
		model.addAttribute("address", address);
		model.addAttribute("orderInfo", orderInfo);
		return ORDERINFO_PAGE;
	}
	
	@RequestMapping(value = "/orderConfirm", method = RequestMethod.POST)
	public String orderConfirm(HttpSession httpSession, OrderInfoVo orderInfo, Model model) {
		model.addAttribute("orderInfo", orderInfo);
		
		String date = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
		orderInfo.setDate(date);
		orderInfo.setAmount(amount);
		
		//Test 加入account
		httpSession.setAttribute("account", "ken001@yahoo.com");
		orderInfo.setAccount((String) httpSession.getAttribute("account"));
		
		orderinfoService.save(orderInfo);
		
		return CONFIRM_PAGE;
	}
}
