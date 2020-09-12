package org.iii.eeit117.project.controller;

import java.util.LinkedHashMap;
import java.util.Map;

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

	@RequestMapping(value = "/result", method = RequestMethod.GET)
	public String search(SearchBean searchBean, Model model) {
		Map<String, String> phoneTypeList = new LinkedHashMap<String, String>();
		phoneTypeList.put(" ", "不限");
		phoneTypeList.put("iPhone6", "iPhone 6系列");
		phoneTypeList.put("iPhone7", "iPhone 7系列");
		phoneTypeList.put("iPhone8", "iPhone 8系列");
		phoneTypeList.put("iPhoneSE", "iPhone SE系列");
		phoneTypeList.put("iPhoneX", "iPhone X系列");
		phoneTypeList.put("iPhone11", "iPhone 11系列");
		phoneTypeList.put("iPhoneSE2", "iPhone SE2系列");

		Map<String, String> storageList = new LinkedHashMap<String, String>();
		storageList.put(" ", "不限");
		storageList.put("16G", "16 GB");
		storageList.put("32G", "32 GB");
		storageList.put("64G", "64 GB");
		storageList.put("128G", "128 GB");
		storageList.put("256G", "256 GB");
		
		Map<Integer, String> amountList = new LinkedHashMap<Integer, String>();
		amountList.put(100000, "不限");
		amountList.put(5000, "5,000元以下");
		amountList.put(10000, "10,000元以下");
		amountList.put(20000, "20,000元以下");
		amountList.put(30000, "30,000元以下");
		amountList.put(40000, "40,000元以下");

		searchBean.setCheckedOption(new String []{" "});	//預設不限打勾
		model.addAttribute("searchBean", searchBean);
		model.addAttribute("results", searchService.search(searchBean));
		model.addAttribute("phoneTypeList", phoneTypeList);
		model.addAttribute("storageList", storageList);
		model.addAttribute("amountList", amountList);
		return MODULE_NAME;
	}

	/* 	傳該商品productId給Buyer頁面  */
	@RequestMapping(value = "/buyer", method = RequestMethod.GET)
	public String buyerPage(SearchBean searchBean, Model model) {
		model.addAttribute("productId", searchBean);
		model.addAttribute("results", searchService.search(searchBean));
		return MODULE_NAME;
	}
	
	

}
