package org.iii.eeit117.project.search;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.hibernate.Session;
import org.iii.eeit117.project.model.util.HibernateUtil;
import org.iii.eeit117.project.model.vo.ProductVo;

public class VipSearchBean extends BaseSearchBean<ProductVo> {

	@Override
	public CriteriaQuery<ProductVo> getCriteriaQuery() {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		CriteriaBuilder builder = session.getCriteriaBuilder();
		CriteriaQuery<ProductVo> query = builder.createQuery(ProductVo.class);
		Root<ProductVo> root = query.from(ProductVo.class);
		query.select(root);
		List<Predicate> restrictions = new ArrayList<>();

		restrictions.add(builder.equal(root.get(ProductVo.VIP), "VIP"));
		restrictions.add(builder.equal(root.get(ProductVo.STATUS), "上架中"));

		return query.where(builder.and(restrictions.toArray(new Predicate[] {})));
	}

}
