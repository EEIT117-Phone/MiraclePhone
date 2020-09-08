package org.iii.eeit117.project.controller;

import java.util.List;

import org.iii.eeit117.project.model.service.ProductService;
import org.iii.eeit117.project.model.vo.ProductVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value = "/" + ProductController.MODULE_NAME)
public class ProductController {

	public static final String MODULE_NAME = "product";

	public static final String MAIN_PAGE = MODULE_NAME;
	
	public static final String SalesPrice_PAGE = "salesPrice";

	public static final String UPDATE_PAGE = MODULE_NAME + "Update";



	@Autowired
	private ProductService productService;



	@RequestMapping(value = { "", "/" }, method = RequestMethod.GET)
	public String index(Model model) {
		model.addAttribute("product", new ProductVo());
		return MAIN_PAGE;
	}

	@RequestMapping(value = { "/insert", "/update" }, method = RequestMethod.POST)
	public String insert(ProductVo productVo) {
		productService.save(productVo);
		return "redirect:/" + SalesPrice_PAGE;
	}
	
	@ResponseBody
	@RequestMapping(value = "test", method = RequestMethod.GET)
	public List<ProductVo> test() {
		return productService.findAll();
	}

}
