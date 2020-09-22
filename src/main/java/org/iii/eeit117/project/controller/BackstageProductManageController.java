package org.iii.eeit117.project.controller;


import org.iii.eeit117.project.model.service.BackstageService;
import org.iii.eeit117.project.model.service.ProductService;
import org.iii.eeit117.project.model.vo.ProductVo;
import org.iii.eeit117.project.search.ProductSearchBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Component
@RequestMapping(value = "/" + BackstageProductManageController.MODULE_NAME)
public class BackstageProductManageController {
	public static final String MODULE_NAME = "productManagement";
	public static final String MAIN_PAGE = MODULE_NAME + "Main";
	public static final String CUSTOMER_CONTACT_PAGE = MODULE_NAME + "CustomerContact";

	@Autowired
	private ProductService productService;
	@Autowired
	private BackstageService backstageService;

	@RequestMapping(value = { "", "/" }, method = RequestMethod.GET)
	public String goMainPageGET(ProductSearchBean searchBean, Model model) {
		model.addAttribute("searchBean", searchBean);
		String[] statusList = { "上架中", "暫時下架"};
		model.addAttribute("statusList",statusList);
		return MAIN_PAGE;
	}

	@RequestMapping(value = "/searchProduct", method = RequestMethod.POST)
	public String searchProduct(ProductSearchBean searchBean, Model model) {
		model.addAttribute("searchBean", searchBean);
		String[] statusList = { "上架中", "暫時下架"};
		model.addAttribute("statusList",statusList);
		model.addAttribute("results", productService.search(searchBean));
		return MAIN_PAGE;
	}
	@ResponseBody
	@RequestMapping(value = "/offShelf", method = RequestMethod.GET)
	public String offShelf(ProductSearchBean searchBean, Model model, Integer productId) {
		model.addAttribute("searchBean", searchBean);
		String[] statusList = { "上架中", "暫時下架"};
		model.addAttribute("statusList",statusList);
		System.out.println(productId);
		ProductVo productVo = productService.findOne(productId);
		String status = productVo.getStatus();
		if(status.equals("上架中")) {
			productVo.setStatus("暫時下架");
			System.out.println("更改暫時下架");
		}else {
			productVo.setStatus("上架中");
			System.out.println("更改上架中");
		}
		productService.save(productVo);
		//backstageService.offShelfMail(productId);
		return productVo.getStatus();
	}

}
