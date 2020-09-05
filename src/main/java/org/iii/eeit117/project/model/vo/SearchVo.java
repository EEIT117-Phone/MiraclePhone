package org.iii.eeit117.project.model.vo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Advertise")
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
	private Integer color;

	@Column(name = "PHONESORT")
	private Integer phoneSort;

	@Column(name = "PHONECONDITION")
	private Integer phoneCondition;

	@Column(name = "COUNTY")
	private Integer county;

	@Column(name = "DISTRICT")
	private Integer district;

	@Column(name = "AMOUNT")
	private Integer amount;

	@Column(name = "FILE1")
	private Integer file1;

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

	public Integer getColor() {
		return color;
	}

	public void setColor(Integer color) {
		this.color = color;
	}

	public Integer getPhoneSort() {
		return phoneSort;
	}

	public void setPhoneSort(Integer phoneSort) {
		this.phoneSort = phoneSort;
	}

	public Integer getPhoneCondition() {
		return phoneCondition;
	}

	public void setPhoneCondition(Integer phoneCondition) {
		this.phoneCondition = phoneCondition;
	}

	public Integer getCounty() {
		return county;
	}

	public void setCounty(Integer county) {
		this.county = county;
	}

	public Integer getDistrict() {
		return district;
	}

	public void setDistrict(Integer district) {
		this.district = district;
	}

	public Integer getAmount() {
		return amount;
	}

	public void setAmount(Integer amount) {
		this.amount = amount;
	}

	public Integer getFile1() {
		return file1;
	}

	public void setFile1(Integer file1) {
		this.file1 = file1;
	}

}
