package org.iii.eeit117.project.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.iii.eeit117.project.model.data.PhoneColorEnum;
import org.iii.eeit117.project.model.data.PhoneStorageEnum;
import org.iii.eeit117.project.model.data.PhoneTypeEnum;
import org.iii.eeit117.project.model.service.FileService;
import org.iii.eeit117.project.model.service.ProductService;
import org.iii.eeit117.project.model.service.SearchService;
import org.iii.eeit117.project.model.vo.FileStorageVo;
import org.iii.eeit117.project.model.vo.ProductVo;
import org.iii.eeit117.project.model.vo.UserVo;
import org.iii.eeit117.project.property.AppProperty;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping(value = "/" + ProductController.MODULE_NAME)
public class ProductController {

	public static final String MODULE_NAME = "product";

	public static final String MAIN_PAGE = MODULE_NAME;

	public static final String PRODUCT_PROMOTION_VIP = "productPromotionVIP";
	
	public static final String PRODUCT_SEARCH = "productSearch";


	@Autowired
	private ProductService productService;

	@Autowired
	private FileService fileService;
	
	@Autowired
	private SearchService searchService;

	private Integer proid;
	


	@RequestMapping(value = { "", "/" }, method = RequestMethod.GET)
	public String index(Model model) {
		model.addAttribute("product", new ProductVo());
		model.addAttribute("phoneTypes", PhoneTypeEnum.values());
		model.addAttribute("phoneStorages", PhoneStorageEnum.values());
		model.addAttribute("phoneColors", PhoneColorEnum.values());
		return MAIN_PAGE;
	}

	@RequestMapping(value = { "/insert" }, method = RequestMethod.POST)
	public String insert(ProductVo productVo, List<MultipartFile> files,
			@SessionAttribute(AppProperty.LOGIN_USER) UserVo user,RedirectAttributes rd) throws Exception {
		// 上傳檔案
		for (int i = 0; i < files.size(); i++) {
			MultipartFile file = files.get(i);
			if (file.getSize() > 0) {
				FileStorageVo fileStorageVo = fileService.upload(file, ProductVo.class);
				productVo.setPicId(i + 1, fileStorageVo.getFileStorageId());
			}
		}
		// 從session取得user account 填入product account
		productVo.setAccount(user.getAccount());

//		productService.save(productVo);
		rd.addFlashAttribute("product", productVo);
		return "redirect:/" + PRODUCT_PROMOTION_VIP;
	}

	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String searchPage(ProductVo productVo, Model model,@SessionAttribute(AppProperty.LOGIN_USER) UserVo user) {
		model.addAttribute("productSearch", new ProductVo());
		model.addAttribute("results", productService.findByAccount(user.getAccount()));
		return PRODUCT_SEARCH;
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(ProductVo productVo,HttpSession httpsession,HttpServletRequest request) {
		String productId=request.getParameter("productId");
		Integer productId2= Integer.parseInt(productId);
		ProductVo productinfo = productService.findOne(productId2);
		String amount=request.getParameter("amount");
		String sellReason=request.getParameter("sellReason");
		Integer amount2= Integer.parseInt(amount);
		productinfo.setAmount(amount2);
		productinfo.setSellReason(sellReason);
		productService.save(productinfo);
		
		
		System.out.println("☆proudctId☆=:"+request.getParameter("productId"));//取值
		System.out.println("☆amount☆=:"+request.getParameter("amount"));//取值
		System.out.println("☆sellReason☆=:"+request.getParameter("sellReason"));//取值
		return "redirect:/product/search" ;
	}

	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String delete(Integer productId) {
		ProductVo productVo = new ProductVo();
		productVo.setProductId(productId);
		productService.delete(productVo);
		return "redirect:/" + MODULE_NAME;
	}

}
