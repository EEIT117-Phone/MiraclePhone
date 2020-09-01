package org.iii.eeit117.project.controller;

import org.iii.eeit117.project.model.service.HelloService;
import org.iii.eeit117.project.model.vo.HelloVo;
import org.iii.eeit117.project.search.HelloSearchBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/hello")
public class HelloController {

	@Autowired
	private HelloService helloService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index() {
		return "hello/hello";
	}
	
	@RequestMapping(value = "/preInsert", method = RequestMethod.GET)
	public String preInsert() {
		return "hello/helloInsert";
	}
	
	@RequestMapping(value = "/preUpdate", method = RequestMethod.GET)
	public String preUpdate(Integer id, Model model) {
		model.addAttribute("result", helloService.findOne(id));
		return "hello/helloUpdate";
	}
	
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String delete(Integer id) {
		HelloVo helloVo = new HelloVo();
		helloVo.setId(id);
		helloService.delete(helloVo);
		return index();
	}
	
	@RequestMapping(value = "/search", method = RequestMethod.POST)
	public String search(HelloSearchBean searchBean, Model model) {
		model.addAttribute("results", helloService.search(searchBean));
		return index();
	}
	
	@RequestMapping(value = {"/insert", "/update"}, method = RequestMethod.POST)
	public String insert(HelloVo helloVo) {
		helloService.save(helloVo);
		return index();
	}
	
}
