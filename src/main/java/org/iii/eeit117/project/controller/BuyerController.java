package org.iii.eeit117.project.controller;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.query.Query;
import org.iii.eeit117.project.model.service.MassageService;
import org.iii.eeit117.project.model.service.ProductService;
import org.iii.eeit117.project.model.util.HibernateUtil;
import org.iii.eeit117.project.model.vo.MassageVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping(value = "/" + BuyerController.MODULE_NAME)
public class BuyerController {

	public static final String MODULE_NAME = "buyer";
	public static final String ANSWER_PAGE = MODULE_NAME + "Answer";
	private int mid;
	MassageVo quest ;
	
	@Autowired
	private ProductService productService;

	@Autowired
	private MassageService massageService;

	@RequestMapping(value = { "", "/" }, method = RequestMethod.GET)
	public String sellerInfo(Model model, Integer productId) {
		List<MassageVo> massages = massageService.findByProductId(productId);
		model.addAttribute("size", massages.size());
		model.addAttribute("qa", massages);
		model.addAttribute("info", productService.findOne(productId));//賣場資訊
		return "buyer";
	}

	@RequestMapping(value = "/massagepage", method = RequestMethod.POST)
	public String massageInfo(MassageVo mv, @RequestParam(name = "textarea") String massage) {
		Timestamp time = new Timestamp(System.currentTimeMillis());
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String timeStr = df.format(time);
		mv.setProductId(10013);//提問買方的ID,後面用session拿
		mv.setMassage(massage);
		mv.setLeaveTime(timeStr);
		massageService.save(mv);
		return "redirect:/" + MODULE_NAME;
	}
	
	@RequestMapping(value = "/answer" , method = RequestMethod.GET)
	public String answer(int id) {
		mid = id;
		quest = massageService.findOne(mid);
		return ANSWER_PAGE;
	}
	
	@RequestMapping(value = "/answerpage" , method = RequestMethod.POST)
	public String answerpage(@RequestParam(name = "text") String answer) {
		Timestamp time = new Timestamp(System.currentTimeMillis());
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String timeStr = df.format(time);
		quest.setAnsTime(timeStr);
		quest.setAnswer(answer);
		massageService.save(quest);
		return "redirect:/" + MODULE_NAME;
	}
}
