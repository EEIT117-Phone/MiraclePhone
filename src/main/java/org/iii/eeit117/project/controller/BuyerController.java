package org.iii.eeit117.project.controller;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.iii.eeit117.project.model.service.MassageService;
import org.iii.eeit117.project.model.service.ProductService;
import org.iii.eeit117.project.model.vo.MassageVo;
import org.iii.eeit117.project.model.vo.UserVo;
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
//	private int mid;
	private Integer proid;
	MassageVo quest ;
	
	@Autowired
	private ProductService productService;

	@Autowired
	private MassageService massageService;

	@RequestMapping(value = { "", "/" }, method = RequestMethod.GET)
	public String sellerInfo(Model model, Integer productId) {
		proid=productId;
		List<MassageVo> massages = massageService.findByProductId(productId);
		model.addAttribute("size", massages.size());
		model.addAttribute("qa", massages);
		model.addAttribute("info", productService.findOne(productId));
		return "buyer";
	}

	@RequestMapping(value = "/massagepage", method = RequestMethod.POST)
	public String massageInfo(MassageVo mv, @RequestParam(name = "textarea") String massage,
							HttpSession httpsession,HttpServletRequest request) {
		
		UserVo user = (UserVo) httpsession.getAttribute("user");
		if(user == null) {
			return "userlogin";
		}
		
		Timestamp time = new Timestamp(System.currentTimeMillis());
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String timeStr = df.format(time);
		mv.setBuyeraccount(user.getAccount());
		mv.setProductId(proid);
		mv.setMassage(massage);
		mv.setLeaveTime(timeStr);
		massageService.save(mv);
		return "redirect:/" + MODULE_NAME + "?productId=" + proid;
	}
//	@ResponseBody
//	@RequestMapping(value = "/answer" , method = RequestMethod.GET)
//	public String answer(Integer id) {
//		mid = id;
//		quest = massageService.findOne(mid);
//		System.out.println(mid);
//		return null;
//	}
	
	@RequestMapping(value = "/answerpage" , method = RequestMethod.POST)
	public String answerpage(@RequestParam(name = "text") String answer,
							 @RequestParam(name = "userid") Integer mid	
							 ,HttpSession httpsession) {
		
		UserVo user = (UserVo) httpsession.getAttribute("user");
		if(user == null) {
			return "userlogin";
		}
		
		quest = massageService.findOne(mid);
		Timestamp time = new Timestamp(System.currentTimeMillis());
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String timeStr = df.format(time);
		quest.setAnsweraccount(user.getAccount());
		quest.setAnsTime(timeStr);
		quest.setAnswer(answer);
		massageService.save(quest);
		return "redirect:/" + MODULE_NAME + "?productId=" + proid;
	}
}
