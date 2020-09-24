package org.iii.eeit117.project.controller;

import java.io.Console;
import java.util.List;

import org.iii.eeit117.project.model.dao.OrderInfoDao;
import org.iii.eeit117.project.model.service.OrderInfoService;
import org.iii.eeit117.project.model.service.ProductService;
import org.iii.eeit117.project.model.vo.OrderInfoVo;
import org.iii.eeit117.project.model.vo.ProductVo;
import org.iii.eeit117.project.model.vo.UserVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttribute;

@Controller
@RequestMapping(value = "/" + OrderHistoryController.MODULE_NAME)
public class OrderHistoryController {
	
	public static final String MODULE_NAME = "orderHistory";
//	要跟JSP名字一樣

	public static final String MAIN_PAGE = MODULE_NAME ;
	
	
    @Autowired
    private ProductService productService;
    
    @Autowired
	private OrderInfoService orderInfoService;


	@RequestMapping(value = { "", "/" }, method = RequestMethod.GET)
	public String index(Model model , @SessionAttribute UserVo user) {//@SessionAttribute是從雲端上抓UserVo裡面的user下來
		List<OrderInfoVo> orderInfo = orderInfoService.findByAccount1(user.getAccount());
		System.out.println(user.getAccount());
//		List<ProductVo> productfo = productService.findByOrderId(6);
		System.out.println("orderInfo");
//		System.out.println(productfo);
//		for(OrderInfoVo i: orderInfo) {
//			System.out.println(i.getOrderId());
//		}
		
///////////////////////////////////////////////
//		for(ProductVo pro: productfo) {
//			System.out.println(pro.getCounty());
//		}
///////////////////////////////////////////////純測試
		
		model.addAttribute("odif",orderInfo );
//		model.addAttribute("pdf",productfo );
		
		
		
		return "orderHistory";
				

	}

}