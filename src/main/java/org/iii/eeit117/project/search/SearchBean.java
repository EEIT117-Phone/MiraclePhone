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

public class SearchBean extends BaseSearchBean<SearchVo> {
	private Integer productId;
	private String searchInput;
	private String phoneType;
	private String memory;
	private String color;
	private String phoneSort;
	private String phoneCondition;
	private String county;
	private String district;
	private String amount;
	private String file1;

	@Override
	public CriteriaQuery<SearchVo> getCriteriaQuery() {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		CriteriaBuilder builder = session.getCriteriaBuilder();
		CriteriaQuery<SearchVo> query = builder.createQuery(SearchVo.class);
		Root<SearchVo> root = query.from(SearchVo.class);
		query.select(root);
		List<Predicate> restrictions = new ArrayList<>();

		if (StringUtil.isNonEmpty(searchInput)) {
			
			
			restrictions.add(builder.like(root.get(SearchVo.PHONETYPE), "%" + searchInput + "%"));
			restrictions.add(builder.like(root.get(SearchVo.MEMORY), "%" + searchInput + "%"));
			restrictions.add(builder.like(root.get(SearchVo.COLOR), "%" + searchInput + "%"));
			restrictions.add(builder.like(root.get(SearchVo.PHONESORT), "%" + searchInput + "%"));
			restrictions.add(builder.like(root.get(SearchVo.PHONECONDITION), "%" + searchInput + "%"));
			restrictions.add(builder.like(root.get(SearchVo.COUNTY), "%" + searchInput + "%"));
			restrictions.add(builder.like(root.get(SearchVo.DISTRICT), "%" + searchInput + "%"));
		}
		return query.where(builder.or(restrictions.toArray(new Predicate[] {})));
	}

	public Integer getProductId() {
		return productId;
	}

	public void setProductId(Integer productId) {
		this.productId = productId;
	}
	
	public String getSearchInput() {
		return searchInput;
	}

	public void setSearchInput(String searchInput) {
		this.searchInput = searchInput;
	}

	public String getPhoneType() {
		return phoneType;
	}

	public void setPhoneType(String phoneType) {
		this.phoneType = phoneType;
	}

	public String getMemory() {
		return memory;
	}

	public void setMemory(String memory) {
		this.memory = memory;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public String getPhoneSort() {
		return phoneSort;
	}

	public void setPhoneSort(String phoneSort) {
		this.phoneSort = phoneSort;
	}

	public String getPhoneCondition() {
		return phoneCondition;
	}

	public void setPhoneCondition(String phoneCondition) {
		this.phoneCondition = phoneCondition;
	}

	public String getCounty() {
		return county;
	}

	public void setCounty(String county) {
		this.county = county;
	}

	public String getDistrict() {
		return district;
	}

	public void setDistrict(String district) {
		this.district = district;
	}

	public String getAmount() {
		return amount;
	}

	public void setAmount(String amount) {
		this.amount = amount;
	}

	public String getFile1() {
		return file1;
	}

	public void setFile1(String file1) {
		this.file1 = file1;
	}

}
