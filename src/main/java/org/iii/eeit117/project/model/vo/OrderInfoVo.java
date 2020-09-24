package org.iii.eeit117.project.model.vo;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Convert;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.iii.eeit117.project.model.converter.PhoneTypeConverter;
import org.iii.eeit117.project.model.data.PhoneTypeEnum;

@Entity
@Table(name = "ORDERINFO")
public class OrderInfoVo {

	public static final String ORDER_ID = "orderId";
	public static final String Date = "date";
	public static final String SHIP_INFO = "shipInfo";
	public static final String SHIP_ADDRESS = "shipAddress";
	public static final String PRODUCT_VO = "productVo";
	public static final String ACCOUNT = "account";
	public static final String ORDER_CONTEXT = "orderContext";
	public static final String AMOUNT = "amount";
	public static final String PHONETYPE = "phoneType";///////////
	public static final String FILE1 = "file1";////////////

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ORDER_ID")
	private Integer orderId;

	@Column(name = "DATE")
	private String date;

	@Column(name = "SHIP_INFO")
	private String shipInfo;

	@Column(name = "SHIP_ADDRESS")
	private String shipAddress;

	@Column(name = "ACCOUNT")
	private String account;

	@Column(name = "ORDER_CONTEXT")
	private String orderContext;

	@OneToMany(fetch=FetchType.EAGER,mappedBy="orderInfoVO") 
	private Set<ProductVo> productVos;

	
	@Column(name = "AMOUNT")
	private Integer amount;
	
	
	@Convert(converter = PhoneTypeConverter.class)//
	private PhoneTypeEnum phoneType;//
	
	@Column(name = "PIC1")/////
	private Integer pic1;/////
	

	public Integer getOrderId() {
		return orderId;
	}

	public void setOrderId(Integer orderId) {
		this.orderId = orderId;
	}

	public String getDate() {
		Date d = new Date();
		String date = new SimpleDateFormat("yyyy-MM-dd").format(d);
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getShipInfo() {
		return shipInfo;
	}

	public void setShipInfo(String shipInfo) {
		this.shipInfo = shipInfo;
	}

	public String getShipAddress() {
		return shipAddress;
	}

	public void setShipAddress(String shipAddress) {
		this.shipAddress = shipAddress;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public Set<ProductVo> getProductVo() {
		return productVos;
	}

	public void setProductVo(Set<ProductVo> productVo) {
		this.productVos = productVo;
	}

	public String getOrderContext() {
		return orderContext;
	}

	public void setOrderContext(String orderContext) {
		this.orderContext = orderContext;
	}

	public Integer getAmount() {
		return amount;
	}

	public void setAmount(Integer amount) {
		this.amount = amount;
	}

	public PhoneTypeEnum getPhoneType() {
		return phoneType;
	}

	public void setPhoneType(PhoneTypeEnum phoneType) {
		this.phoneType = phoneType;
	}

	public Integer getPic1() {
		return pic1;
	}

	public void setPic1(Integer pic1) {
		this.pic1 = pic1;
	}

	public static String getFile1() {
		return FILE1;
	}

}
