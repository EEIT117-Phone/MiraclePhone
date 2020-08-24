package org.iii.eeit117.project.model.vo;

public class OrderInfo {
	private String productId;
	private String productName;
	private String productStorage;
	private int price;
	private String seller;
	private String paymentInfo;
	private String shipInfo;
	
//	public OrderInfo(String productId) {
//		super();
//		this.productId = productId;
//	}
	public String getProductId() {
		return productId;
	}
	public void setProductId(String productId) {
		this.productId = productId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getProductStorage() {
		return productStorage;
	}
	public void setProductStorage(String productIdStorage) {
		this.productStorage = productIdStorage;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getSeller() {
		return seller;
	}
	public void setSeller(String seller) {
		this.seller = seller;
	}
	public String getPaymentInfo() {
		return paymentInfo;
	}
	public void setPaymentInfo(String paymentInfo) {
		this.paymentInfo = paymentInfo;
	}
	public String getShipInfo() {
		return shipInfo;
	}
	public void setShipInfo(String shipInfo) {
		this.shipInfo = shipInfo;
	}
	
}
