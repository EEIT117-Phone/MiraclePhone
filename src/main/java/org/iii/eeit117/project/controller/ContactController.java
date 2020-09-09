package org.iii.eeit117.project.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.hibernate.Session;
import org.iii.eeit117.project.model.service.CustomerService;
import org.iii.eeit117.project.model.vo.CustomerServiceVo;
import org.iii.eeit117.project.model.vo.ProductVo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/" + ContactController.MODULE_NAME)
public class ContactController {

	public static final String MODULE_NAME = "contact";

	public static final String MAIN_PAGE = MODULE_NAME + "Main";

	private CustomerService customerService;

	@RequestMapping(value = "/customer" , method = RequestMethod.GET)
	public String index(CustomerServiceVo customerVo, Model m) {
		m.addAttribute("customerVo" , customerVo);
//		List<CustomerServiceVo> CustomerServiceVo = (List<CustomerServiceVo>) httpSession.getAttribute("customerItem");
		String date = new SimpleDateFormat("yyyy-MM-dd HH:MM:SS").format(new Date());
		customerVo.setDate(date);
		
//		Integer customerid = 0;
//		for (CustomerServiceVo Vo : CustomerServiceVo) {
//			customerid+=Vo.getCustomerid();
//		}
//		customerVo.setCustomerid(customerid);

		//customerService.save(customerVo);

		
//		customerVo.setAccount(date);
//		session = HibernateUtil.getSessionFactory().getCurrentSession();
//		 Query<CustomerServiceVo> query = session.createQuery("from CustomerServiceVo where customerid =: cid", CustomerServiceVo.class);
//
//		 customerid=1;
//		 query.setParameter("cid", customerid);
//		 List<CustomerServiceVo> list = query.getResultList();
//		 m.addAttribute("text" , list.size());
		
		
			return MAIN_PAGE;
	}

}
