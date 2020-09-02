package org.iii.eeit117.project.controller;

import org.iii.eeit117.project.model.data.HelloTypeEnum;
import org.iii.eeit117.project.model.service.HelloService;
import org.iii.eeit117.project.model.vo.HelloVo;
import org.iii.eeit117.project.search.HelloSearchBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/" + HelloController.MODULE_NAME)
public class HelloController {

	public static final String MODULE_NAME = "hello";

	public static final String MAIN_PAGE = MODULE_NAME + "Main";

	public static final String INSERT_PAGE = MODULE_NAME + "Insert";

	public static final String UPDATE_PAGE = MODULE_NAME + "Update";

	@Autowired
	private HelloService helloService;

	@RequestMapping(value = { "", "/" }, method = RequestMethod.GET)
	public String index(Model model) {
		model.addAttribute("types", HelloTypeEnum.values());
		return MAIN_PAGE;
	}

	@RequestMapping(value = "/preInsert", method = RequestMethod.GET)
	public String preInsert(Model model) {
		model.addAttribute("types", HelloTypeEnum.values());
		return INSERT_PAGE;
	}

	@RequestMapping(value = "/preUpdate", method = RequestMethod.GET)
	public String preUpdate(Integer id, Model model) {
		model.addAttribute("result", helloService.findOne(id));
		model.addAttribute("types", HelloTypeEnum.values());
		return UPDATE_PAGE;
	}

	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String delete(Integer id) {
		HelloVo helloVo = new HelloVo();
		helloVo.setId(id);
		helloService.delete(helloVo);
		return MAIN_PAGE;
	}

	@RequestMapping(value = "/search", method = RequestMethod.POST)
	public String search(HelloSearchBean searchBean, Model model) {
		model.addAttribute("types", HelloTypeEnum.values());
		model.addAttribute("results", helloService.search(searchBean));
		return MAIN_PAGE;
	}

	@RequestMapping(value = { "/insert", "/update" }, method = RequestMethod.POST)
	public String insert(HelloVo helloVo) {
		helloService.save(helloVo);
		return MAIN_PAGE;
	}

}
