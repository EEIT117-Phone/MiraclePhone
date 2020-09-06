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

import org.iii.eeit117.project.model.vo.SearchVo;

public class IndexSearchBean extends BaseSearchBean<SearchVo> {

	private String indexSearch;

	@Override
	public CriteriaQuery<SearchVo> getCriteriaQuery() {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		CriteriaBuilder builder = session.getCriteriaBuilder();
		CriteriaQuery<SearchVo> query = builder.createQuery(SearchVo.class);
		Root<SearchVo> root = query.from(SearchVo.class);
		query.select(root);
		List<Predicate> restrictions = new ArrayList<>();

	
		if (StringUtil.isNonEmpty(indexSearch)) {
			restrictions.add(builder.like(root.get(SearchVo.PHONETYPE), "%" + indexSearch + "%"));
			
			restrictions.add(builder.like(root.get(SearchVo.MEMORY), "%" + indexSearch + "%"));
			
			restrictions.add(builder.like(root.get(SearchVo.COLOR), "%" + indexSearch + "%"));
			
			restrictions.add(builder.like(root.get(SearchVo.PHONESORT), "%" + indexSearch + "%"));
			
			restrictions.add(builder.like(root.get(SearchVo.PHONECONDITION ), "%" + indexSearch + "%"));
			
			restrictions.add(builder.like(root.get(SearchVo.COUNTY ), "%" + indexSearch + "%"));
			
			restrictions.add(builder.like(root.get(SearchVo.DISTRICT ), "%" + indexSearch + "%"));
			
			restrictions.add(builder.lt(root.get(SearchVo.AMOUNT), Integer.parseInt(indexSearch)));
		
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