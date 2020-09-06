package org.iii.eeit117.project.controller;

import org.iii.eeit117.project.model.service.SearchService;
import org.iii.eeit117.project.search.SearchBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/" + SearchController.MODULE_NAME)
public class SearchController {

	public static final String MODULE_NAME = "search";

	@Autowired
	private SearchService searchService;

	@RequestMapping(value = { "", "/" }, method = RequestMethod.GET)
	public String index(Model model) {
		model.addAttribute("searchBean", new SearchBean());
		return MODULE_NAME;
	}

	@RequestMapping(value = "/result", method = RequestMethod.POST)
	public String search(SearchBean searchBean, Model model) {
		model.addAttribute("searchBean", searchBean);
		model.addAttribute("results", searchService.search(searchBean));
		return MODULE_NAME;
	}
	
	@RequestMapping(value = "/result", method = RequestMethod.GET)
	public String phoneTypeChk(SearchBean searchBean, Model model) {
		model.addAttribute("phoneType", searchBean);
		model.addAttribute("results", searchService.search(searchBean));
		return MODULE_NAME;
	}

}
