package org.iii.eeit117.project.model.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.hibernate.Session;
import org.hibernate.query.Query;
import org.iii.eeit117.project.model.dao.BaseDao;
import org.iii.eeit117.project.model.dao.CustomerServiceDao;
import org.iii.eeit117.project.model.service.BackstageService;
import org.iii.eeit117.project.model.service.CartService;
import org.iii.eeit117.project.model.service.CustomerService;
import org.iii.eeit117.project.model.service.EmailService;
import org.iii.eeit117.project.model.service.ProductService;
import org.iii.eeit117.project.model.service.UserService;
import org.iii.eeit117.project.model.util.HibernateUtil;
import org.iii.eeit117.project.model.vo.CartVo;
import org.iii.eeit117.project.model.vo.CustomerServiceVo;
import org.iii.eeit117.project.model.vo.ProductVo;
import org.iii.eeit117.project.model.vo.UserVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BackstageImpl implements BackstageService {

	@Autowired
	private ProductService productService;
	@Autowired
	private EmailService emailService;

	
	@Override
	public void offShelfMail(Integer productId) {
		String subject = "商品已下架";
		String text = "您的商品因不符合刊登規定，目前已下架，請修改刊登資訊!";
		ProductVo productVo = productService.findOne(productId);
		String mail = productVo.getAccount();
		emailService.sendSimpleMessage(mail, subject, text);
		
	}
}
