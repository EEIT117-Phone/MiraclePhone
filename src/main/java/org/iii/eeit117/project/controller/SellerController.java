package org.iii.eeit117.project.controller;

import java.util.List;

import org.iii.eeit117.project.model.data.HelloTypeEnum;
import org.iii.eeit117.project.model.service.SellerService;
import org.iii.eeit117.project.model.vo.SellerVo;
import org.iii.eeit117.project.search.HelloSearchBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value = "/" + SellerController.MODULE_NAME)
public class SellerController {

	public static final String MODULE_NAME = "seller";



	@Autowired
	private SellerService SellerService;

	@RequestMapping(value = { "", "/" }, method = RequestMethod.GET)
	public String index(Model model) {
		model.addAttribute("searchBean", new HelloSearchBean());
		model.addAttribute("types", HelloTypeEnum.values());
		return MODULE_NAME;
	}

	@RequestMapping(value = "/preInsert", method = RequestMethod.GET)
	public String preInsert(Model model) {
		model.addAttribute("result", new SellerVo());
		model.addAttribute("types", HelloTypeEnum.values());
		return MODULE_NAME;
	}

	@RequestMapping(value = "/preUpdate", method = RequestMethod.GET)
	public String preUpdate(Integer id, Model model) {
		model.addAttribute("result", SellerService.findOne(id));
		model.addAttribute("types", HelloTypeEnum.values());
		return MODULE_NAME;
	}


	@RequestMapping(value = { "/insert", "/update" }, method = RequestMethod.POST)
	public String insert(SellerVo SellerVo) {
		SellerService.save(SellerVo);
		return "redirect:/" + MODULE_NAME;
	}
	
	@ResponseBody
	@RequestMapping(value = "test", method = RequestMethod.GET)
	public List<SellerVo> test() {
		return SellerService.findAll();
	}

}
