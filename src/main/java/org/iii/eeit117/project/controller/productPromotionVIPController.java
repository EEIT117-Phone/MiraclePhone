package org.iii.eeit117.project.controller;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
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
		
		System.out.println(forsaveproduct.getAccount());
		System.out.println(promotecase);
		
		String[] promteColumn = promotecase.split(" ");
		System.out.println(promteColumn[0]+promteColumn[1]+promteColumn[2]);
		
		
		String VIPlevel=promteColumn[0];
		int adlastTime=Integer.parseInt(promteColumn[1]);
		int status=Integer.parseInt(promteColumn[2]);
	
		
		Timestamp time = new Timestamp(System.currentTimeMillis());
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String ad = sdf.format(time);
		Date ad_date=sdf.parse(ad);
		
		Timestamp expirytime = new Timestamp(System.currentTimeMillis()+adlastTime);
		SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy-MM-dd");
		String ex = sdf2.format(expirytime);
		Date expiry_date=sdf.parse(ex);
		
		
		forsaveproduct.setVip(VIPlevel);
		forsaveproduct.setStatus(status);
		forsaveproduct.setAd_date(ad_date);
		forsaveproduct.setExpiry_date(expiry_date);
		productService.save(forsaveproduct);
		
		
		m.addAttribute("product", forsaveproduct);
		
		return "productPromotionConfirm";
		
		
	}
	
}
