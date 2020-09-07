package org.iii.eeit117.project.controller;

import java.text.SimpleDateFormat;
import java.util.Iterator;
import java.util.List;
import java.util.TimeZone;

import org.hibernate.Session;
import org.hibernate.query.Query;
import org.iii.eeit117.project.model.service.BuyerService;
import org.iii.eeit117.project.model.service.MassageService;
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

	private Session session;
	@Autowired
	private BuyerService buyerService;

	@Autowired
	private MassageService massageService;

	@RequestMapping(value = { "", "/" }, method = RequestMethod.GET)
	public String sellerInfo(Model model) {
		 session = HibernateUtil.getSessionFactory().getCurrentSession();
		Query<MassageVo> query = session.createQuery("from MassageVo where productId=:pid"
													, MassageVo.class);
		query.setParameter("pid", 10015);
		List<MassageVo> list = query.getResultList();
		model.addAttribute("qa", list);
		model.addAttribute("info", buyerService.findOne(10015));

		return "buyer";
	}

	@RequestMapping(value = "/massagepage", method = RequestMethod.POST)
	public String massageInfo(MassageVo mv, @RequestParam(name = "textarea") String massage) {
		session = HibernateUtil.getSessionFactory().getCurrentSession();
		SimpleDateFormat nowdate = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		nowdate.setTimeZone(TimeZone.getTimeZone("GMT+8"));
		String sdate = nowdate.format(new java.util.Date());
		mv.setProductId(10015);
		mv.setMassage(massage);
		mv.setLeaveTime(sdate);
		session.save(mv);
		return "redirect:/" + MODULE_NAME;
	}
}
