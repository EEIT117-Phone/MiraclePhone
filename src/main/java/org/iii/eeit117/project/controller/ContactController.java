package org.iii.eeit117.project.controller;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.persistence.metamodel.SetAttribute;
import javax.servlet.http.HttpSession;

import org.apache.tiles.request.Request;
import org.iii.eeit117.project.model.service.CustomerService;
import org.iii.eeit117.project.model.vo.CustomerServiceVo;
import org.iii.eeit117.project.model.vo.UserVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;

@Controller
@RequestMapping(value = "/" + ContactController.MODULE_NAME)
public class ContactController {

	public static final String MODULE_NAME = "contact";

	public static final String MAIN_PAGE = MODULE_NAME + "Main";

	@Autowired
	private CustomerService customerService;

	private String q1;

	private String q2;

	@RequestMapping(value = { "", "/" }, method = RequestMethod.GET)
	public String index(Model m) {
		return MAIN_PAGE;
	}

	@RequestMapping(value = "/customer", method = RequestMethod.GET)
	public String insert(HttpSession httpSession,CustomerServiceVo customerVo , @SessionAttribute("user") UserVo user) {
		
		Timestamp time = new Timestamp(System.currentTimeMillis());
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String timeStr = df.format(time);
		
		customerVo.setDate(timeStr);
		customerVo.setAccount(user.getAccount());
		
		
		q1 = customerVo.getSelectq1();
		q2 = customerVo.getSelectq2();
		System.out.println("q1");
		if(q1 == "請選擇" || q2 == "請選擇") {
			httpSession.setAttribute("q1", "請選擇問題類別");
			//httpSession.setAttribute(q2, "請選擇問題類別");
			System.out.println("123");
		}else {
			customerService.save(customerVo);
			System.out.println("456");
		}
		
		return MAIN_PAGE;
	}

	@ResponseBody
	@RequestMapping(value = "/history", method = RequestMethod.GET)
	public List<CustomerServiceVo> history(@SessionAttribute("user") UserVo user) {
		return customerService.findByAccount(user.getAccount());
	}

}
