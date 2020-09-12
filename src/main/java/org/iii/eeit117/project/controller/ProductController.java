package org.iii.eeit117.project.controller;

import java.sql.Blob;
import java.util.List;

import org.iii.eeit117.project.model.service.ProductService;
import org.iii.eeit117.project.model.util.FileUtil;
import org.iii.eeit117.project.model.vo.ProductVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
@RequestMapping(value = "/" + ProductController.MODULE_NAME)
public class ProductController {

	public static final String MODULE_NAME = "product";

	public static final String MAIN_PAGE = MODULE_NAME;
	
	public static final String PRODUCTPROMOTIONVIP = "productPromotionVIP";

	public static final String UPDATE_PAGE = MODULE_NAME + "Update";



	@Autowired
	private ProductService productService;



	@RequestMapping(value = { "", "/" }, method = RequestMethod.GET)
	public String index(Model model) {
		model.addAttribute("product", new ProductVo());
		return MAIN_PAGE;
	}

	@RequestMapping(value = { "/insert", "/update" }, method = RequestMethod.POST)
	public String insert(ProductVo productVo) {
		Blob file1 = null;
		Blob file2 = null;
		Blob file3 = null;
		Blob file4 = null;
		Blob file5 = null;
		Blob file6 = null;
		
		try {
			file1 = FileUtil.convertMultipartFileToBlob(productVo.getProductImage1());
			file2 = FileUtil.convertMultipartFileToBlob(productVo.getProductImage2());
			file3 = FileUtil.convertMultipartFileToBlob(productVo.getProductImage3());
			file4 = FileUtil.convertMultipartFileToBlob(productVo.getProductImage4());
			file5 = FileUtil.convertMultipartFileToBlob(productVo.getProductImage5());
			file6 = FileUtil.convertMultipartFileToBlob(productVo.getProductImage6());
		} catch(Exception e) {
			e.printStackTrace();
		}
		productVo.setFile1(file1);
		productVo.setFile2(file2);
		productVo.setFile3(file3);
		productVo.setFile4(file4);
		productVo.setFile5(file5);
		productVo.setFile6(file6);
		
		productService.save(productVo);
		return "redirect:/" + PRODUCTPROMOTIONVIP;
	}
	
	
	@ResponseBody
	@RequestMapping(value = "test", method = RequestMethod.GET)
	public List<ProductVo> test() {
		return productService.findAll();
	}

}
