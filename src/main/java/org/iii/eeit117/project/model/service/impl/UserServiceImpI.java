package org.iii.eeit117.project.model.service.impl;

import java.util.Collections;
import java.util.List;

import org.iii.eeit117.project.model.dao.BaseDao;
import org.iii.eeit117.project.model.dao.UserDao;
import org.iii.eeit117.project.model.service.UserService;
import org.iii.eeit117.project.model.vo.UserVo;
import org.iii.eeit117.project.search.BaseSearchBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpI implements UserService  {
	
	
	@Autowired
	private UserDao dao;
	
	@Override
	public boolean checkLogin(String account) {
		try {
			UserVo dataCheck=dao.findOne(account);
			String checkAccount=dataCheck.getAccount();
			if(checkAccount.equals(account)) { //若從資料庫有成功撈出同筆帳號，回傳true值
				return true;
			}
			return false; //失敗回傳false值
		}catch(Exception e){
			e.getStackTrace();
			return false; //發生錯誤也回傳false值
		}
		
		
	}
	
	public BaseDao<UserVo, String> getDao() {
		return dao;
	}
	
	
	@Override
	public List<UserVo> search(BaseSearchBean<UserVo> searchBean) {
		if (searchBean.getCriteriaQuery() != null) {
			return getDao().findBy(searchBean.getCriteriaQuery());
		}
		return Collections.emptyList();
	}
	@Override
	public List<UserVo> findAll() {
		List<UserVo> list=dao.findAll();
		return list;
	}

	@Override
	public UserVo findOne(String id) {
		return dao.findOne(id);
	}

	@Override
	public void save(UserVo obj) {
		dao.save(obj);
		
	}

	@Override
	public void delete(UserVo obj) {
		dao.delete(obj);
		
	}

	
	
}
