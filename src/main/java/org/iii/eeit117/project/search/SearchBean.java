package org.iii.eeit117.project.search;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.hibernate.Session;
import org.iii.eeit117.project.model.util.HibernateUtil;
import org.iii.eeit117.project.model.util.StringUtil;
import org.iii.eeit117.project.model.vo.HelloVo;
import org.iii.eeit117.project.model.vo.ProductVo;

public class SearchBean extends BaseSearchBean<ProductVo> {
	private Integer productId;
	private String phoneType;
	private String memory;
	private String color;
	private String phoneSort;
	private String phoneCondition;
	private String county;
	private String district;
	private Integer amount;
	private String file1;
	private String searchInput;
	private String[] checkedOption;
	private String checkOption;
	private Integer checkAmountOption;

	@Override
	public CriteriaQuery<ProductVo> getCriteriaQuery() {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		CriteriaBuilder builder = session.getCriteriaBuilder();
		CriteriaQuery<ProductVo> query = builder.createQuery(ProductVo.class);
		Root<ProductVo> root = query.from(ProductVo.class);
		query.select(root);
		List<Predicate> restrictions = new ArrayList<>();

		// 快速找全新/二手/零件
		if (StringUtil.isNonEmpty(phoneSort)) {
			restrictions.add(builder.equal(root.get(ProductVo.PHONESORT), phoneSort));
			System.out.println("phoneSort: " + phoneSort);
		}

		// 進階搜尋預設打勾
		if (StringUtil.isNonEmpty(checkedOption)) {
			restrictions.add(builder.like(root.get(ProductVo.PHONETYPE), checkedOption + "%"));
			System.out.println("checkedOption: " + checkedOption);
		}

		// 進階搜尋功能
		if (StringUtil.isNonEmpty(checkOption)) {
			System.out.println("checkOption: " + checkOption);
			String[] checkOptionList = checkOption.split(",");
			Predicate orSearch;
			Predicate finalSearch;
			List<Predicate> list = new LinkedList<>();
			for (String oneWord : checkOptionList) {
				System.out.println("oneWord: " + oneWord);
				Predicate phonetype1 = builder.like(root.get(ProductVo.PHONETYPE), "%" + oneWord + "%");
				Predicate memory1 = builder.like(root.get(ProductVo.MEMORY), "%" + oneWord + "%");
				Predicate color1 = builder.like(root.get(ProductVo.COLOR), "%" + oneWord + "%");
				Predicate phonesort1 = builder.like(root.get(ProductVo.PHONESORT), "%" + oneWord + "%");
				Predicate phonecondition1 = builder.like(root.get(ProductVo.PHONECONDITION), "%" + oneWord + "%");
				Predicate county1 = builder.like(root.get(ProductVo.COUNTY), "%" + oneWord + "%");
				Predicate district1 = builder.like(root.get(ProductVo.DISTRICT), "%" + oneWord + "%");
				orSearch = builder.or(phonetype1, memory1, color1, phonesort1, phonecondition1, county1, district1);
				list.add(orSearch);
			}
			// 預設價格低到高排序
			query.orderBy(builder.asc(root.get("amount")));
			finalSearch = builder.and(list.toArray(new Predicate[0]));
			restrictions.add(finalSearch);
			query.where(finalSearch);
		}

		// 進階搜尋價格功能
		if (StringUtil.isNonEmpty(checkAmountOption)) {
			System.out.println("checkAmountOption: " + checkAmountOption);
			restrictions.add(builder.le(root.get(ProductVo.AMOUNT), checkAmountOption));
			query.orderBy(builder.asc(root.get("amount")));
		}

		// 搜尋框
		if (StringUtil.isNonEmpty(searchInput)) {
			System.out.println("searchInput: " + searchInput);
			String[] searchInputList = searchInput.split(" ");
			Predicate orSearch;
			Predicate finalSearch;
			List<Predicate> list = new LinkedList<>();
			for (String oneWord : searchInputList) {
				System.out.println("oneWord: " + oneWord);
				Predicate phonetype1 = builder.like(root.get(ProductVo.PHONETYPE), "%" + oneWord + "%");
				Predicate memory1 = builder.like(root.get(ProductVo.MEMORY), "%" + oneWord + "%");
				Predicate color1 = builder.like(root.get(ProductVo.COLOR), "%" + oneWord + "%");
				Predicate phonesort1 = builder.like(root.get(ProductVo.PHONESORT), "%" + oneWord + "%");
				Predicate phonecondition1 = builder.like(root.get(ProductVo.PHONECONDITION), "%" + oneWord + "%");
				Predicate county1 = builder.like(root.get(ProductVo.COUNTY), "%" + oneWord + "%");
				Predicate district1 = builder.like(root.get(ProductVo.DISTRICT), "%" + oneWord + "%");
				orSearch = builder.or(phonetype1, memory1, color1, phonesort1, phonecondition1, county1, district1);
				list.add(orSearch);
			}
			// 預設價格低到高排序
			query.orderBy(builder.asc(root.get("amount")));
			finalSearch = builder.and(list.toArray(new Predicate[0]));
			restrictions.add(finalSearch);
			query.where(finalSearch);
		}

		// 搜尋框未輸入則全顯示
		if (StringUtil.isEmpty(searchInput)) {
			restrictions.add(builder.like(root.get(ProductVo.PHONETYPE), "%" + searchInput + "%"));
			restrictions.add(builder.like(root.get(ProductVo.MEMORY), "%" + searchInput + "%"));
			restrictions.add(builder.like(root.get(ProductVo.COLOR), "%" + searchInput + "%"));
			restrictions.add(builder.like(root.get(ProductVo.PHONESORT), "%" + searchInput + "%"));
			restrictions.add(builder.like(root.get(ProductVo.PHONECONDITION), "%" + searchInput + "%"));
			restrictions.add(builder.like(root.get(ProductVo.COUNTY), "%" + searchInput + "%"));
			restrictions.add(builder.like(root.get(ProductVo.DISTRICT), "%" + searchInput + "%"));
			// 預設價格低到高排序
			query.orderBy(builder.asc(root.get("amount")));
		}
		// 最終return
		return query.where(builder.or(restrictions.toArray(new Predicate[] {})));
	}

	public Integer getCheckAmountOption() {
		return checkAmountOption;
	}

	public void setCheckAmountOption(Integer checkAmountOption) {
		this.checkAmountOption = checkAmountOption;
	}

	public String getCheckOption() {
		return checkOption;
	}

	public void setCheckOption(String checkOption) {
		this.checkOption = checkOption;
	}

	public String[] getCheckedOption() {
		return checkedOption;
	}

	public void setCheckedOption(String[] checkedOption) {
		this.checkedOption = checkedOption;
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

	public Integer getAmount() {
		return amount;
	}

	public void setAmount(Integer amount) {
		this.amount = amount;
	}

	public String getFile1() {
		return file1;
	}

	public void setFile1(String file1) {
		this.file1 = file1;
	}

}
