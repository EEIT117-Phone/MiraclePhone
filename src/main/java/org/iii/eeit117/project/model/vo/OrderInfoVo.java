package org.iii.eeit117.project.model.vo;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;


@Entity
@Table(name="ORDER")
public class OrderInfoVo {
	
	public static final String ORDER_ID = "orderId";
	public static final String Date ="date";
	public static final String PAY_INFO ="payInfo";
	public static final String SHIP_INFO ="shipInfo";
	public static final String SHIP_ADDRESS ="shipAddress";
	public static final String SELLER_VO ="sellerVo";
	public static final String USER_VO ="userVo";
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ORDER_ID", nullable = false)
	private String orderId;
	
	@Column(name = "DATE")
	private String date;
	
	@Column(name = "PAY_INFO")
	private String payInfo;
	
	@Column(name = "SHIP_INFO")
	private String shipInfo;
	
	@Column(name = "SHIP_ADDRESS")
	private String shipAddress;
	
	@Column(name = "SELLER_VO")
	@OneToMany(fetch=FetchType.LAZY,mappedBy="orderInfoVO") 
//	@OneToMany(fetch=FetchType.LAZY,mappedBy="orderInfoVO",cascade=CascadeType.MERGE) 

	private Set<ProductVo> productVos;
	
	@ManyToOne(cascade=CascadeType.MERGE,fetch=FetchType.LAZY)
	@JoinColumn(name="orderInfoVos") 
	private UserVo userVo;

	public String getOrderId() {
		return orderId;
	}

	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		Date d = new Date();
		String getDate = new SimpleDateFormat ("yyyy-MM-dd").format(d);
		this.date = getDate;
	}

	public String getPayInfo() {
		return payInfo;
	}

	public void setPayInfo(String payInfo) {
		this.payInfo = payInfo;
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

	public UserVo getUserVo() {
		return userVo;
	}

	public void setUserVo(UserVo userVo) {
		this.userVo = userVo;
	}

	public Set<ProductVo> getSellerVo() {
		return productVos;
	}

	public void setSellerVo(Set<ProductVo> productVo) {
		this.productVos = productVo;
	}

}
