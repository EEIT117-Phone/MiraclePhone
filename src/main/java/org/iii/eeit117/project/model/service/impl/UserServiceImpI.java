package org.iii.eeit117.project.model.service.impl;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.iii.eeit117.project.model.dao.BaseDao;
import org.iii.eeit117.project.model.dao.UserDao;
import org.iii.eeit117.project.model.service.UserService;
import org.iii.eeit117.project.model.util.HibernateUtil;
import org.iii.eeit117.project.model.vo.UserVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpI extends BaseServiceImpl<UserVo, String> implements UserService  {
	
	
	@Autowired
	private UserDao dao;
	
	@Override
	public String checkLogin(String account,String password) {
		try {
			UserVo dataCheck=dao.findOne(account);
			if(dataCheck==null) {
				return "this account had not been registered";
			}
			String checkpwd=dataCheck.getPassword();
			if(checkpwd.equals(password)) { //若從資料庫有成功撈出同筆帳號，回傳成功字串
				return "acc&&pwd are corrected";
			}
			return "pwd is not correct";
			
		}catch(Exception e){
			e.getStackTrace();
			return "system has error"; //發生錯誤也回傳系統錯誤值
		}
		
		
	}
	
	
	public BaseDao<UserVo, String> getDao() {
		return dao;
	}


	@SuppressWarnings("unchecked")
	@Override
	public List<String> getColumnName() {
		List<String> list= new ArrayList<String>();
		String sql="SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'Users'";
		SessionFactory factory=HibernateUtil.getSessionFactory();
		Session session=factory.getCurrentSession();
		Query query=session.createNativeQuery(sql);
		list=(ArrayList<String>)query.getResultList();
		return list;
	}



	
	
	
	
	
	
	
}
