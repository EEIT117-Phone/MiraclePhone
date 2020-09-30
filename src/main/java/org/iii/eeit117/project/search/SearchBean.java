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
import org.iii.eeit117.project.model.vo.ProductVo;

public class SearchBean extends BaseSearchBean<ProductVo> {
	private String phoneSort;
	private String vip;
	private String searchInput;
	private String checkOption;
	private Integer checkAmountOption;
	private Integer checkdFaceOption;
	private Integer checkdPostOption;
	private String ad_date;
	private Integer checkLowAmount;
	private Integer checkHeightAmount;

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
		}

		// 首頁快速搜全新/二手/零件VIP
		if (StringUtil.isNonEmpty(vip)) {
			restrictions.add(builder.equal(root.get(ProductVo.VIP), vip));
			restrictions.add(builder.equal(root.get(ProductVo.PHONESORT), phoneSort));
		}

		// 進階搜尋功能
		if (StringUtil.isNonEmpty(checkOption)) {
			System.out.println("checkOption: " + checkOption);
			String[] checkOptionList = checkOption.split(",");
			Predicate orSearch;
			Predicate andSearch;
			Predicate finalSearch;
			List<Predicate> list = new LinkedList<>();
			for (String oneWord : checkOptionList) {
				System.out.println("oneWord: " + oneWord);
				Predicate phonetype = builder.like(root.get(ProductVo.PHONETYPE).as(String.class), "%" + oneWord + "%");
				Predicate storage = builder.like(root.get(ProductVo.STORAGE).as(String.class), "%" + oneWord + "%");
				Predicate color = builder.like(root.get(ProductVo.COLOR).as(String.class), "%" + oneWord + "%");
				Predicate phonesort = builder.like(root.get(ProductVo.PHONESORT), "%" + oneWord + "%");
				Predicate phonecondition = builder.like(root.get(ProductVo.PHONECONDITION), "%" + oneWord + "%");
				Predicate county = builder.like(root.get(ProductVo.COUNTY), "%" + oneWord + "%");
				Predicate district = builder.like(root.get(ProductVo.DISTRICT), "%" + oneWord + "%");
				Predicate amount;
				try {
					amount = builder.le(root.get(ProductVo.AMOUNT), Integer.parseInt(oneWord));
				} catch (NumberFormatException e) {
					amount = builder.le(root.get(ProductVo.AMOUNT), 0);
				}
				Predicate status = builder.equal(root.get(ProductVo.STATUS), "上架中");
				orSearch = builder.or(phonetype, storage, color, phonesort, phonecondition, county, district, amount);
				andSearch = builder.and(orSearch, status);
				list.add(andSearch);
			}
			// 預設價格低到高排序
			query.orderBy(builder.asc(root.get("amount")));
			finalSearch = builder.and(list.toArray(new Predicate[] {}));
			restrictions.add(finalSearch);
		} else {
			// 搜尋框未輸入則全顯示
			restrictions.add(builder.equal(root.get(ProductVo.STATUS), "上架中"));
			// 預設價格低到高排序
			query.orderBy(builder.asc(root.get("amount")));
		}

		// 進階搜尋價格功能-介於輸入金額
		if (StringUtil.isNonEmpty(checkLowAmount) || StringUtil.isNonEmpty(checkHeightAmount)) {
			System.out.println("L: " + checkLowAmount);
			System.out.println("H: " + checkHeightAmount);
			restrictions.add(builder.between(root.get(ProductVo.AMOUNT), checkLowAmount, checkHeightAmount));
			query.orderBy(builder.asc(root.get("amount")));
		}

		// 進階搜尋交易方式功能
		if (StringUtil.isNonEmpty(checkdFaceOption)) {
			System.out.println("checkdFaceOption: " + checkdFaceOption);
			restrictions.add(builder.equal(root.get(ProductVo.FACE), checkdFaceOption));
			query.orderBy(builder.asc(root.get("face")));
		}

		if (StringUtil.isNonEmpty(checkdPostOption)) {
			System.out.println("checkdPostOption: " + checkdPostOption);
			restrictions.add(builder.equal(root.get(ProductVo.POST), checkdPostOption));
			query.orderBy(builder.asc(root.get("post")));
		}

		// 搜尋框
		if (StringUtil.isNonEmpty(searchInput)) {
			System.out.println("searchInput: " + searchInput);
			String[] searchInputList = searchInput.split(" ");
			Predicate orSearch;
			Predicate andSearch;
			Predicate finalSearch;
			List<Predicate> list = new LinkedList<>();
			for (String oneWord : searchInputList) {
				System.out.println("oneWord: " + oneWord);
				Predicate phonetype = builder.like(root.get(ProductVo.PHONETYPE).as(String.class), "%" + oneWord + "%");
				Predicate storage = builder.like(root.get(ProductVo.STORAGE).as(String.class), "%" + oneWord + "%");
				Predicate color = builder.like(root.get(ProductVo.COLOR).as(String.class), "%" + oneWord + "%");
				Predicate phonesort = builder.like(root.get(ProductVo.PHONESORT), "%" + oneWord + "%");
				Predicate phonecondition = builder.like(root.get(ProductVo.PHONECONDITION), "%" + oneWord + "%");
				Predicate county = builder.like(root.get(ProductVo.COUNTY), "%" + oneWord + "%");
				Predicate district = builder.like(root.get(ProductVo.DISTRICT), "%" + oneWord + "%");
				Predicate amount;
				try {
					amount = builder.le(root.get(ProductVo.AMOUNT), Integer.parseInt(oneWord));
				} catch (NumberFormatException e) {
					amount = builder.le(root.get(ProductVo.AMOUNT), 0);
				}
				Predicate status = builder.equal(root.get(ProductVo.STATUS), "上架中");
				orSearch = builder.or(phonetype, storage, color, phonesort, phonecondition, county, district, amount);
				andSearch = builder.and(orSearch, status);
				list.add(andSearch);
			}
			// 預設價格低到高排序
			query.orderBy(builder.asc(root.get("amount")));
			finalSearch = builder.and(list.toArray(new Predicate[] {}));
			restrictions.add(finalSearch);
		}

		// 搜尋框未輸入則全顯示
		if (StringUtil.isEmpty(searchInput)) {
			restrictions.add(builder.equal(root.get(ProductVo.STATUS), "上架中"));
			// 預設價格低到高排序
			query.orderBy(builder.asc(root.get("amount")));
		}

		return query.where(builder.and(restrictions.toArray(new Predicate[] {})));
	}

	public Integer getCheckdFaceOption() {
		return checkdFaceOption;
	}

	public void setCheckdFaceOption(Integer checkdFaceOption) {
		this.checkdFaceOption = checkdFaceOption;
	}

	public Integer getCheckdPostOption() {
		return checkdPostOption;
	}

	public void setCheckdPostOption(Integer checkdPostOption) {
		this.checkdPostOption = checkdPostOption;
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

	public String getSearchInput() {
		return searchInput;
	}

	public void setSearchInput(String searchInput) {
		this.searchInput = searchInput;
	}

	public String getPhoneSort() {
		return phoneSort;
	}

	public void setPhoneSort(String phoneSort) {
		this.phoneSort = phoneSort;
	}

	public String getAd_date() {
		return ad_date;
	}

	public void setAd_date(String ad_date) {
		this.ad_date = ad_date;
	}

	public String getVip() {
		return vip;
	}

	public void setVip(String vip) {
		this.vip = vip;
	}

	public Integer getCheckLowAmount() {
		return checkLowAmount;
	}

	public void setCheckLowAmount(Integer checkLowAmount) {
		this.checkLowAmount = checkLowAmount;
	}

	public Integer getCheckHeightAmount() {
		return checkHeightAmount;
	}

	public void setCheckHeightAmount(Integer checkHeightAmount) {
		this.checkHeightAmount = checkHeightAmount;
	}

}
