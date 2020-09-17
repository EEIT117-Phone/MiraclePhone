package org.iii.eeit117.project.controller;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.iii.eeit117.project.model.service.ProductService;
import org.iii.eeit117.project.model.vo.ProductVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;


import org.springframework.web.bind.annotation.RequestMapping;



@Controller
@RequestMapping(value = "/" + ProductExpiryController.MODULE_NAME)
public class ProductExpiryController {

	public static final String MODULE_NAME = "productExpiry";
	@Autowired
	private ProductService productservice;

	@GetMapping(value = { "", "/" })
	public void renewProductStatus(Model m) {
		
		Date currentDate=new Date();
		List<ProductVo> allProducts=productservice.findAll();
		for(ProductVo eachProduct:allProducts) {
			if(currentDate.after(eachProduct.getExpiry_date())) {
				
				eachProduct.setStatus(0);
				
			}
			
		}
		
		
		
	}
	
	
}