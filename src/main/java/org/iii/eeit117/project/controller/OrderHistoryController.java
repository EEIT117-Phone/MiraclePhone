package org.iii.eeit117.project.controller;

import java.io.Console;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.iii.eeit117.project.model.dao.OrderInfoDao;
import org.iii.eeit117.project.model.service.OrderInfoService;
import org.iii.eeit117.project.model.service.ProductService;
import org.iii.eeit117.project.model.vo.OrderInfoVo;
import org.iii.eeit117.project.model.vo.ProductVo;
import org.iii.eeit117.project.model.vo.UserVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
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
	private OrderInfoService orderInfoService;

    private List<OrderInfoVo> orderInfo;

	@RequestMapping(value = { "", "/" }, method = RequestMethod.GET)
	public String index(Model model , @SessionAttribute UserVo user) {
		orderInfo = orderInfoService.findByAccount1(user.getAccount());
               
        model.addAttribute("odif",orderInfo );
      
       
       return "orderHistory";
				
	}
	
	@GetMapping("/orderDetails/{orderIndex}")
	public String getDetailedOrderInfo(@PathVariable("orderIndex") Integer orderIndex,Model m) {
		
	
		Set<ProductVo> collec=orderInfo.get(orderIndex).getProductVo();
		
		 m.addAttribute("productSet",collec);
		
		return "orderDetails";
	}
	
}