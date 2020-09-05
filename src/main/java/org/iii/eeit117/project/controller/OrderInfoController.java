package org.iii.eeit117.project.controller;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.iii.eeit117.project.model.data.HelloTypeEnum;
import org.iii.eeit117.project.model.service.OrderInfoService;
import org.iii.eeit117.project.model.vo.HelloVo;
import org.iii.eeit117.project.search.HelloSearchBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value = "/" + OrderInfoController.MODULE_NAME)
public class OrderInfoController {

	public static final String MODULE_NAME = "cart";

	public static final String MAIN_PAGE = MODULE_NAME + "OrderInfo";

	public static final String INSERT_PAGE = MODULE_NAME + "OrderConfirm";

	public static final String UPDATE_PAGE = MODULE_NAME + "Update";

	@Autowired
	private OrderInfoService orderinfoService;

	@RequestMapping(value = { "", "/" }, method = RequestMethod.GET)
	public String index(Model model) {
		model.addAttribute("message", "購物車內無商品");
		return MAIN_PAGE;
	}
	
	@ResponseBody
	@RequestMapping(value = "/OrderInfoServlet", method = RequestMethod.GET)
	public Integer cartAdd(Integer productId, HttpSession httpSession) {
		Set<Integer> ids = (Set<Integer>) httpSession.getAttribute("cart");
		if (ids == null) {
			ids = new HashSet<>();
			httpSession.setAttribute("cart", ids);
		}
		ids.add(productId);
		int amount = ids.size();
		return amount;
//		response.getOutputStream().write(amount.getBytes());
//		System.out.println(amount);
//		
//		model.addAttribute("result", new HelloVo());
//		model.addAttribute("types", HelloTypeEnum.values());
//		return INSERT_PAGE;
	}

	

}
