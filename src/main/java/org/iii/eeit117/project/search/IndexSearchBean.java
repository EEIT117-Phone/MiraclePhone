package org.iii.eeit117.project.search;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.hibernate.Session;
import org.iii.eeit117.project.model.util.HibernateUtil;
import org.iii.eeit117.project.model.util.StringUtil;
import org.iii.eeit117.project.model.vo.ProductVo;

public class IndexSearchBean extends BaseSearchBean<ProductVo> {

	private String indexSearch;

	@Override
	public CriteriaQuery<ProductVo> getCriteriaQuery() {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		CriteriaBuilder builder = session.getCriteriaBuilder();
		CriteriaQuery<ProductVo> query = builder.createQuery(ProductVo.class);
		Root<ProductVo> root = query.from(ProductVo.class);
		query.select(root);
		List<Predicate> restrictions = new ArrayList<>();

	
		if (StringUtil.isNonEmpty(indexSearch)) {
			restrictions.add(builder.like(root.get(ProductVo.PHONETYPE), "%" + indexSearch + "%"));
			
			restrictions.add(builder.like(root.get(ProductVo.MEMORY), "%" + indexSearch + "%"));
			
			restrictions.add(builder.like(root.get(ProductVo.COLOR), "%" + indexSearch + "%"));
			
			restrictions.add(builder.like(root.get(ProductVo.PHONESORT), "%" + indexSearch + "%"));
			
			restrictions.add(builder.like(root.get(ProductVo.PHONECONDITION ), "%" + indexSearch + "%"));
			
			restrictions.add(builder.like(root.get(ProductVo.COUNTY ), "%" + indexSearch + "%"));
			
			restrictions.add(builder.like(root.get(ProductVo.DISTRICT ), "%" + indexSearch + "%"));
			
			restrictions.add(builder.lt(root.get(ProductVo.AMOUNT), Integer.parseInt(indexSearch)));
		
		}
		
		
		

		return query.where(builder.or(restrictions.toArray(new Predicate[] {})));
	}

	public String getIndexSearch() {
		return indexSearch;
	}

	public void setIndexSearch(String indexSearch) {
		this.indexSearch = indexSearch;
	}

}