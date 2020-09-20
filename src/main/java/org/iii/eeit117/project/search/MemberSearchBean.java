package org.iii.eeit117.project.search;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.hibernate.Session;
import org.iii.eeit117.project.model.data.HelloTypeEnum;
import org.iii.eeit117.project.model.util.HibernateUtil;
import org.iii.eeit117.project.model.util.StringUtil;
import org.iii.eeit117.project.model.vo.UserVo;

public class MemberSearchBean extends BaseSearchBean<UserVo> {

	private String account;
	
	private String idnumber;
	
	@Override
	public CriteriaQuery<UserVo> getCriteriaQuery() {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		CriteriaBuilder builder = session.getCriteriaBuilder();
		CriteriaQuery<UserVo> query =  builder.createQuery(UserVo.class);
		Root<UserVo> root = query.from(UserVo.class);
		query.select(root);
		List<Predicate> restrictions = new ArrayList<>();
		
		if (StringUtil.isNonEmpty(account)) {
			restrictions.add(builder.equal(root.get(UserVo.ACCOUNT), account));
		}
		if (StringUtil.isNonEmpty(idnumber)) {
			restrictions.add(builder.equal(root.get(UserVo.IDNUMBER), idnumber));
		}
		
		return query.where(builder.and(restrictions.toArray(new Predicate[] {})));
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getIdnumber() {
		return idnumber;
	}

	public void setIdnumber(String idnumber) {
		this.idnumber = idnumber;
	}

	
	
}
