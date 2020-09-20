package org.iii.eeit117.project.controller;

import java.text.ParseException;
import java.util.Calendar;
import java.util.Date;

import org.iii.eeit117.project.model.service.ProductService;
import org.iii.eeit117.project.model.vo.ProductVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
@RequestMapping(value = "/" + productPromotionVIPController.MODULE_NAME)
public class productPromotionVIPController {

	public static final String MODULE_NAME = "productPromotionVIP";
	private ProductVo forsaveproduct;


	@RequestMapping(value = { "", "/" }, method = RequestMethod.GET)
	public String index(@ModelAttribute("product") ProductVo product) {
		
		forsaveproduct=product;
		
		return MODULE_NAME;
	}
	
	
	@Autowired
	private ProductService productService;

	@PostMapping("/pay")
	public String payalready(@RequestParam("promotecase") String promotecase,Model m) throws ParseException {
		
	
		String[] promteColumn = promotecase.split(" ");	
		String VIPlevel=promteColumn[0];
		int adlastTime=Integer.parseInt(promteColumn[1]);
		String status=promteColumn[2];
	

		Date ad_date=new Date();
		System.out.println(ad_date);
		Calendar calendar=Calendar.getInstance();
		calendar.setTime(ad_date);
		calendar.add(Calendar.DAY_OF_MONTH, +adlastTime);
		Date expiry_date=calendar.getTime();
		
		
	
		forsaveproduct.setVip(VIPlevel);
		forsaveproduct.setStatus(status);
		forsaveproduct.setAd_date(ad_date);
		forsaveproduct.setExpiry_date(expiry_date);
		forsaveproduct.setWatch(0);
		productService.save(forsaveproduct);
		
		m.addAttribute("product", forsaveproduct);
		
		return "productPromotionConfirm";
		
		
	}
	
}
