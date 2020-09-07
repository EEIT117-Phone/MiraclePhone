package org.iii.eeit117.project.controller;

import java.util.HashMap;
import java.util.Map;

import org.iii.eeit117.project.model.service.SearchService;
import org.iii.eeit117.project.search.SearchBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
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
//		model.addAttribute("phoneTypeList", new SearchBean());
		return MODULE_NAME;
	}

	@RequestMapping(value = "/result", method = RequestMethod.GET)
	public String phoneTypeChk(SearchBean searchBean, Model model) {
		model.addAttribute("searchBean", searchBean);
		model.addAttribute("results", searchService.search(searchBean));
		return MODULE_NAME;
	}

	@RequestMapping(value = "/buyer", method = RequestMethod.GET)
	public String buyerPage(SearchBean searchBean, Model model) {
		model.addAttribute("productId", searchBean);
		model.addAttribute("results", searchService.search(searchBean));
		return MODULE_NAME;
	}

//	@ModelAttribute("phoneTypeList")
//	public Map<String, String> getPhoneTypeList() {
//		Map<String, String> phoneTypeList = new HashMap<String, String>();
//		phoneTypeList.put("*", "不限");
//		phoneTypeList.put("iPhone 6", "iPhone 6系列");
//		phoneTypeList.put("iPhone 7", "iPhone 7系列");
//		phoneTypeList.put("iPhone 8", "iPhone 8系列");
//		phoneTypeList.put("iPhone SE", "iPhone SE系列");
//		phoneTypeList.put("iPhone X", "iPhone X系列");
//		phoneTypeList.put("iPhone 11", "iPhone 11系列");
//		phoneTypeList.put("iPhone SE2", "iPhone SE2系列");
//		return phoneTypeList;
//	}

}
