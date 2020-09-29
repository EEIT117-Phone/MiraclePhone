package org.iii.eeit117.project.controller;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.iii.eeit117.project.model.data.FilterCountryEnum;
import org.iii.eeit117.project.model.data.FilterPhoneTypeEnum;
import org.iii.eeit117.project.model.data.PhoneStorageEnum;
import org.iii.eeit117.project.model.service.SearchService;
import org.iii.eeit117.project.model.vo.ProductVo;
import org.iii.eeit117.project.search.SearchBean;
import org.iii.eeit117.project.search.VipSearchBean;
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
	private List<ProductVo> getSearchBean;
	private List<ProductVo> getVipSearchBean;

	@Autowired
	private SearchService searchService;

	@RequestMapping(value = { "", "/" }, method = RequestMethod.GET)
	public String index(Model model) {
		model.addAttribute("searchBean", new SearchBean());
		return MODULE_NAME;
	}

	@RequestMapping(value = "/result", method = RequestMethod.GET)
	public String search(SearchBean searchBean, VipSearchBean vipSearchBean, Model model, HttpSession httpsession) {
		getSearchBean = searchService.search(searchBean);
		getVipSearchBean = searchService.search(vipSearchBean);

		Map<Integer, String> amountList = new LinkedHashMap<Integer, String>();
		amountList.put(5000, "5,000元以下");
		amountList.put(10000, "10,000元以下");
		amountList.put(20000, "20,000元以下");
		amountList.put(30000, "30,000元以下");
		amountList.put(40000, "40,000元以下");
		
		Map<Integer, String> face = new LinkedHashMap<Integer, String>();
		face.put(1, "面交");
		
		Map<Integer, String> post = new LinkedHashMap<Integer, String>();
		post.put(1, "郵寄匯款");

		httpsession.setAttribute("rs", getSearchBean);
		model.addAttribute("results", getSearchBean);
		model.addAttribute("vipresults", getVipSearchBean);
		model.addAttribute("countyList", FilterCountryEnum.values());
		model.addAttribute("phoneTypeList", FilterPhoneTypeEnum.values());
		model.addAttribute("storageList", PhoneStorageEnum.values());
		model.addAttribute("amountList", amountList);
		model.addAttribute("face", face);
		model.addAttribute("post", post);
		return MODULE_NAME;
	}

	@ResponseBody
	@RequestMapping(value = "/ajaxresult", method = RequestMethod.GET)
	public List<ProductVo> ajax(SearchBean searchBean, Model model, HttpSession httpsession) {
		List<ProductVo> sb = searchService.search(searchBean);
		List<ProductVo> newlist = new ArrayList<>();

		for (ProductVo ajaxsearch : sb) {
			for (ProductVo innitial : getSearchBean) {
				int a = ajaxsearch.getProductId();
				int b = innitial.getProductId();

				if (a == b) {
					newlist.add(ajaxsearch);
				}
			}
		}
		httpsession.setAttribute("rs", newlist);
		return newlist;
	}

}
