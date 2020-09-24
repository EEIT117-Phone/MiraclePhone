package org.iii.eeit117.project.controller;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

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

		Map<String, String> countyList = new LinkedHashMap<String, String>();
//		countyList.put("", "不限");
		countyList.put("臺北市", "臺北市");
		countyList.put("新北市", "新北市");
		countyList.put("基隆市", "基隆市");
		countyList.put("桃園市", "桃園市");
		countyList.put("新竹", "新竹縣/市");
		countyList.put("苗栗縣", "苗栗縣");
		countyList.put("臺中市", "臺中市");
		countyList.put("彰化縣", "彰化縣");
		countyList.put("南投縣", "南投縣");
		countyList.put("雲林縣", "雲林縣");
		countyList.put("嘉義", "嘉義縣/市");
		countyList.put("臺南市", "臺南市");
		countyList.put("高雄市", "高雄市");
		countyList.put("屏東縣", "屏東縣");
		countyList.put("宜蘭縣", "宜蘭縣");
		countyList.put("花蓮縣", "花蓮縣");
		countyList.put("臺東縣", "臺東縣");
		
		Map<String, String> phoneTypeList = new LinkedHashMap<String, String>();
//		phoneTypeList.put("", "不限");
		phoneTypeList.put("iPhone6", "iPhone 6系列");
		phoneTypeList.put("iPhone7", "iPhone 7系列");
		phoneTypeList.put("iPhone8", "iPhone 8系列");
		phoneTypeList.put("iPhoneSE", "iPhone SE系列");
		phoneTypeList.put("iPhoneX", "iPhone X系列");
		phoneTypeList.put("iPhone11", "iPhone 11系列");
		phoneTypeList.put("iPhoneSE2", "iPhone SE2系列");

		Map<String, String> storageList = new LinkedHashMap<String, String>();
//		storageList.put("", "不限");
		storageList.put("16G", "16 GB");
		storageList.put("32G", "32 GB");
		storageList.put("64G", "64 GB");
		storageList.put("128G", "128 GB");
		storageList.put("256G", "256 GB");
		storageList.put("512G", "512 GB");

		Map<Integer, String> amountList = new LinkedHashMap<Integer, String>();
//		amountList.put(100000, "不限");
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
		model.addAttribute("countyList", countyList);
		model.addAttribute("phoneTypeList", phoneTypeList);
		model.addAttribute("storageList", storageList);
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
