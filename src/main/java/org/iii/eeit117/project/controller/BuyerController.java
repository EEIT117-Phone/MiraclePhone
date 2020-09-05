package org.iii.eeit117.project.controller;

import java.text.SimpleDateFormat;
import java.util.TimeZone;

import org.iii.eeit117.project.model.service.BuyerService;
import org.iii.eeit117.project.model.service.MassageService;
import org.iii.eeit117.project.model.vo.MassageVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



@Controller
@RequestMapping(value="/buyerpage")
public class BuyerController {

	
	@Autowired
	private BuyerService buyerService;
	
	@Autowired
	private MassageService massageService;
	
	@RequestMapping(value="/info",method = RequestMethod.GET)
	public String sellerInfo(Model model) {
		
		model.addAttribute("info", buyerService.findOne(10018));
		
		 return "buyer";
	}
	
	@RequestMapping(value="/massagepage",method = RequestMethod.POST)
	public String massageInfo(MassageVo mv) {
		
		SimpleDateFormat nowdate = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		nowdate.setTimeZone(TimeZone.getTimeZone("GMT+8"));
		String sdate = nowdate.format(new java.util.Date());
		
		mv.setLeaveTime(sdate);
		mv.setProductId(10018);
		massageService.save(mv);
		return "buyer";
	}
}
