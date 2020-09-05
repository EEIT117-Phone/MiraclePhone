package org.iii.eeit117.project.model.vo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "SELLER")
public class SearchVo {

	public static final String PRODUCTID = "productId";

	public static final String PHONETYPE = "phoneType";

	public static final String MEMORY = "memory";

	public static final String COLOR = "color";

	public static final String PHONESORT = "phoneSort";

	public static final String PHONECONDITION = "phoneCondition";

	public static final String COUNTY = "county";

	public static final String DISTRICT = "district";

	public static final String AMOUNT = "amount";

	public static final String FILE1 = "file1";

	@Id
	@Column(name = "PRODUCTID")
	private Integer productId;

	@Column(name = "PHONETYPE")
	private String phoneType;

	@Column(name = "MEMORY")
	private String memory;

	@Column(name = "COLOR")
	private String color;

	@Column(name = "PHONESORT")
	private String phoneSort;

	@Column(name = "PHONECONDITION")
	private String phoneCondition;

	@Column(name = "COUNTY")
	private String county;

	@Column(name = "DISTRICT")
	private String district;

	@Column(name = "AMOUNT")
	private String amount;

	@Column(name = "FILE1")
	private String file1;

	public Integer getProductId() {
		return productId;
	}

	public void setProductId(Integer productId) {
		this.productId = productId;
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
