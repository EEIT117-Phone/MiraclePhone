package org.iii.eeit117.project.controller;

import java.util.List;

import org.iii.eeit117.project.model.data.HelloTypeEnum;
import org.iii.eeit117.project.model.service.SearchService;
import org.iii.eeit117.project.model.vo.SearchVo;
import org.iii.eeit117.project.search.BaseSearchBean;
import org.iii.eeit117.project.search.HelloSearchBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value = "/" + SearchController.MODULE_NAME)
public class SearchController {

	public static final String MODULE_NAME = "search";

	@Autowired
	private SearchService searchService;

	@RequestMapping(value = { "", "/" }, method = RequestMethod.GET)
	public String index(Model model) {
		model.addAttribute("searchBean", new HelloSearchBean());
		model.addAttribute("types", HelloTypeEnum.values());
		return MODULE_NAME;
	}

	@RequestMapping(value = "/search", method = RequestMethod.POST)
	public String search(BaseSearchBean<SearchVo> searchBean, Model model) {
		model.addAttribute("searchBean", searchBean);
		model.addAttribute("types", HelloTypeEnum.values());
		model.addAttribute("results", searchService.search(searchBean));
		return MODULE_NAME;
	}
	
//	@ResponseBody
//	@RequestMapping(value = "test", method = RequestMethod.GET)
//	public List<SearchVo> test() {
//		return searchService.findAll();
//	}

}
