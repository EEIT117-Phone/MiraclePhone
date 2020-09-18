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
import org.iii.eeit117.project.model.vo.ProductVo;

public class ProductSearchBean extends BaseSearchBean<ProductVo> {

	private String account;
	
	private String productId;
	
	private String[] status;
	
	@Override
	public CriteriaQuery<ProductVo> getCriteriaQuery() {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		CriteriaBuilder builder = session.getCriteriaBuilder();
		CriteriaQuery<ProductVo> query =  builder.createQuery(ProductVo.class);
		Root<ProductVo> root = query.from(ProductVo.class);
		query.select(root);
		List<Predicate> restrictions = new ArrayList<>();
		
		// eq condiction
		if (StringUtil.isNonEmpty(account)) {
			restrictions.add(builder.equal(root.get(ProductVo.ACCOUNT), account));
		}
		if (StringUtil.isNonEmpty(productId)) {
			restrictions.add(builder.equal(root.get(ProductVo.PRODUCTID), productId));
		}
		
		if (status != null && status.length > 0) {
			restrictions.add(root.get(ProductVo.STATUS).in(status));
		}
		
		return query.where(builder.and(restrictions.toArray(new Predicate[] {})));
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getProductId() {
		return productId;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}

	public String[] getStatus() {
		return status;
	}

	public void setStatus(String[] status) {
		this.status = status;
	}

	
	
}
