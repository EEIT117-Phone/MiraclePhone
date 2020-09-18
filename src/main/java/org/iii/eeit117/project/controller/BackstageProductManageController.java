package org.iii.eeit117.project.controller;

import java.util.List;

import org.iii.eeit117.project.model.service.CustomerService;
import org.iii.eeit117.project.model.service.ProductService;
import org.iii.eeit117.project.model.vo.CustomerServiceVo;
import org.iii.eeit117.project.model.vo.ProductVo;
import org.iii.eeit117.project.search.ProductSearchBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Component
@RequestMapping(value = "/" + BackstageProductManageController.MODULE_NAME)
public class BackstageProductManageController {
	public static final String MODULE_NAME = "productManagement";
	public static final String MAIN_PAGE = MODULE_NAME + "Main";
	public static final String CUSTOMER_CONTACT_PAGE = MODULE_NAME + "CustomerContact";

	@Autowired
	private ProductService productService;

	@RequestMapping(value = { "", "/" }, method = RequestMethod.GET)
	public String goMainPageGET(ProductSearchBean searchBean, Model model) {
		model.addAttribute("searchBean", searchBean);
		String[] statusList = { "上架中", "暫時下架"};
		model.addAttribute("statusList",statusList);
		return MAIN_PAGE;
	}

	@RequestMapping(value = "/searchProduct", method = RequestMethod.POST)
	public String customerContact(ProductSearchBean searchBean, Model model) {
		model.addAttribute("searchBean", searchBean);
		String[] statusList = { "上架中", "暫時下架"};
		model.addAttribute("statusList",statusList);
		model.addAttribute("results", productService.search(searchBean));
		return MAIN_PAGE;
	}

	@RequestMapping(value = "/offShelf", method = RequestMethod.GET)
	public String customerContact2(ProductSearchBean searchBean, ProductVo productVo, Model model,String id, String state) {
		model.addAttribute("searchBean", searchBean);
		String[] statusList = { "上架中", "暫時下架"};
		model.addAttribute("statusList",statusList);
		System.out.println(productVo.getProductId());
		System.out.println(productVo.getStatus());
		return MAIN_PAGE;
	}

}
