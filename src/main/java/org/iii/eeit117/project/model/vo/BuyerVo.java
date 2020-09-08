package org.iii.eeit117.project.model.vo;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="ADVERTISE")
public class BuyerVo {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "PRODUCTID", nullable = false)
	private Integer productId;
	private String account;
	private String phoneType;
	private String memory;
	private String color;
	private String phoneSort;
	private String phoneCondition;
	private String phoneWarranty;
	private String headPhone;
	private String socket;
	private Integer amount;
	private String sellReason;
	private Date yearOfManufacture;
	
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	
	@Column(name = "PHONETYPE")
	public String getPhoneType() {
		return phoneType;
	}
	
	public void setPhoneType(String phoneType) {
		this.phoneType = phoneType;
	}
	
	@Column(name = "MEMORY")
	public String getMemory() {
		return memory;
	}
	public void setMemory(String memory) {
		this.memory = memory;
	}
	
	@Column(name = "COLOR")
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	
	@Column(name = "PHONESORT")
	public String getPhoneSort() {
		return phoneSort;
	}
	public void setPhoneSort(String phoneSort) {
		this.phoneSort = phoneSort;
	}
	
	@Column(name = "PHONECONDITION")
	public String getPhoneCondition() {
		return phoneCondition;
	}
	public void setPhoneCondition(String phoneCondition) {
		this.phoneCondition = phoneCondition;
	}
	
	@Column(name = "PHONEWARRANTY")
	public String getPhoneWarranty() {
		return phoneWarranty;
	}
	public void setPhoneWarranty(String phoneWarranty) {
		this.phoneWarranty = phoneWarranty;
	}
	
	@Column(name = "HEADPHONE")
	public String getHeadPhone() {
		return headPhone;
	}
	public void setHeadPhone(String headPhone) {
		this.headPhone = headPhone;
	}
	
	@Column(name = "SOCKET")
	public String getSocket() {
		return socket;
	}
	public void setSocket(String socket) {
		this.socket = socket;
	}
	
	@Column(name = "AMOUNT")
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	
	@Column(name = "SELLREASON")
	public String getSellReason() {
		return sellReason;
	}
	public void setSellReason(String sellReason) {
		this.sellReason = sellReason;
	}
	
	@Column(name = "YEAROFMANUFACTURE")
	public Date getYearOfManufacture() {
		return yearOfManufacture;
	}
	public void setYearOfManufacture(Date yearOfManufacture) {
		this.yearOfManufacture = yearOfManufacture;
	}
	
	@Column(name = "ACCOUNT")
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	
	
}
