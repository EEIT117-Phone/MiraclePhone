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
import org.iii.eeit117.project.model.vo.HelloVo;

public class HelloSearchBean extends BaseSearchBean<HelloVo> {

	private String name;
	
	private String enName;
	
	private Integer age;
	
	private HelloTypeEnum type;
	
	@Override
	public CriteriaQuery<HelloVo> getCriteriaQuery() {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		CriteriaBuilder builder = session.getCriteriaBuilder();
		CriteriaQuery<HelloVo> query =  builder.createQuery(HelloVo.class);
		Root<HelloVo> root = query.from(HelloVo.class);
		query.select(root);
		List<Predicate> restrictions = new ArrayList<>();
		
		// eq condiction
		if (StringUtil.isNonEmpty(name)) {
			restrictions.add(builder.equal(root.get(HelloVo.NAME), name));
		}
		// like condiction
		if (StringUtil.isNonEmpty(enName)) {
			restrictions.add(builder.like(root.get(HelloVo.EN_NAME), name));
		}
		// greater condiction
		if (StringUtil.isNonEmpty(age)) {
			restrictions.add(builder.ge(root.get(HelloVo.AGE), age));
		}
		// in condiction
		if (StringUtil.isNonEmpty(type)) {
			restrictions.add(root.get(HelloVo.NAME).in(HelloTypeEnum.HELLO_MAN));
		}
		return query.where(builder.and(restrictions.toArray(new Predicate[] {})));
	}
	
	
}
