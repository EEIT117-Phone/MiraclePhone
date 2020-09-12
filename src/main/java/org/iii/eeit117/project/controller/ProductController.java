package org.iii.eeit117.project.controller;

import java.util.List;

import org.iii.eeit117.project.model.data.PhoneColorEnum;
import org.iii.eeit117.project.model.data.PhoneStorageEnum;
import org.iii.eeit117.project.model.data.PhoneTypeEnum;
import org.iii.eeit117.project.model.service.FileService;
import org.iii.eeit117.project.model.service.ProductService;
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


@Controller
@RequestMapping(value = "/" + ProductController.MODULE_NAME)
public class ProductController {

	public static final String MODULE_NAME = "product";

	public static final String MAIN_PAGE = MODULE_NAME;
	
	public static final String PRODUCT_PROMOTION_VIP = "productPromotionVIP";

	public static final String UPDATE_PAGE = MODULE_NAME + "Update";

	@Autowired
	private ProductService productService;
	
	@Autowired
	private FileService fileService;

	@RequestMapping(value = { "", "/" }, method = RequestMethod.GET)
	public String index(Model model) {
		model.addAttribute("product", new ProductVo());
		model.addAttribute("phoneTypes", PhoneTypeEnum.values());
		model.addAttribute("phoneStorages", PhoneStorageEnum.values());
		model.addAttribute("phoneColors", PhoneColorEnum.values());
		return MAIN_PAGE;
	}

	@RequestMapping(value = { "/insert", "/update" }, method = RequestMethod.POST)
	public String insert(ProductVo productVo, List<MultipartFile> files, @SessionAttribute(AppProperty.LOGIN_USER) UserVo user) throws Exception {
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
		
		productService.save(productVo);
		return "redirect:/" + PRODUCT_PROMOTION_VIP;
	}

}
