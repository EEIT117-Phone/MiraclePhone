package org.iii.eeit117.project.model.service.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.query.Query;
import org.iii.eeit117.project.model.dao.BaseDao;
import org.iii.eeit117.project.model.dao.CustomerServiceDao;
import org.iii.eeit117.project.model.service.CustomerService;
import org.iii.eeit117.project.model.util.HibernateUtil;
import org.iii.eeit117.project.model.vo.CustomerServiceVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CustomerServiceImpl extends BaseServiceImpl<CustomerServiceVo, Integer> implements CustomerService {
	
	@Autowired
	private CustomerServiceDao customerServiceDao;

	@Override
	public BaseDao<CustomerServiceVo, Integer> getDao() {
		return customerServiceDao;
	}
	
	@Override
	public List<CustomerServiceVo> findUnResponse(String q1, String q2) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession(); 
		String hql="from CustomerServiceVo where selectq1=?0 and selectq2=?1 and answer is null order by questiondate desc";
		Query<CustomerServiceVo> query=session.createQuery(hql);
		query.setString(0, q1);
		query.setString(1, q2);
		
		return query.getResultList();
	}

	@Override
	public List<CustomerServiceVo> findByAccount(String account) {
		return customerServiceDao.findByAndCondition("account", account);
	}

}
