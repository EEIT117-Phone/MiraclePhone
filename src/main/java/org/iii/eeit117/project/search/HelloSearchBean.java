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
	
	private HelloTypeEnum[] types;
	
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
			restrictions.add(builder.like(root.get(HelloVo.EN_NAME), "%" + enName + "%"));
		}
		// greater condiction
		if (StringUtil.isNonEmpty(age)) {
			restrictions.add(builder.ge(root.get(HelloVo.AGE), age));
		}
		// in condiction
		if (StringUtil.isNonEmpty(types)) {
			restrictions.add(root.get(HelloVo.TYPE).in(types));
		}
		return query.where(builder.and(restrictions.toArray(new Predicate[] {})));
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEnName() {
		return enName;
	}

	public void setEnName(String enName) {
		this.enName = enName;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public HelloTypeEnum[] getTypes() {
		return types;
	}

	public void setTypes(HelloTypeEnum[] types) {
		this.types = types;
	}
	
}
