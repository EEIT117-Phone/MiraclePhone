package org.iii.eeit117.project.controller;


import org.iii.eeit117.project.model.service.SearchService;
import org.iii.eeit117.project.model.vo.SearchVo;
import org.iii.eeit117.project.search.BaseSearchBean;
import org.iii.eeit117.project.search.IndexSearchBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = { "/", "/" + IndexController.MODULE_NAME })
public class IndexController {

	public static final String MODULE_NAME = "index";
	
	public static final String MAIN_PAGE = MODULE_NAME + "Main";
	
	@Autowired
	private SearchService searchService;

	@RequestMapping(value = { "", "/" }, method = RequestMethod.GET)
	public String index(Model model) {
		
		model.addAttribute("searchBean", new IndexSearchBean());
		return MAIN_PAGE;
	}
	
	@RequestMapping(value = "/search", method = RequestMethod.POST)
	public String search(BaseSearchBean<SearchVo> searchBean, Model model) {
		model.addAttribute("searchBean", searchBean);
		model.addAttribute("results", searchService.search(searchBean));
		return MAIN_PAGE;
	}
	

}