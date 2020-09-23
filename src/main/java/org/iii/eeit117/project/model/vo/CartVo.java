package org.iii.eeit117.project.model.vo;

import java.util.List;

public class CartVo {
	private String account;
	private List<ProductVo> productVos;
	private List<String> shipInfo;
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public List<ProductVo> getProductVos() {
		return productVos;
	}
	public void setProductVos(List<ProductVo> productVos) {
		this.productVos = productVos;
	}
	
	public List<String> getShipInfo() {
		return shipInfo;
	}
	public void setShipInfo(List<String> shipInfo) {
		this.shipInfo = shipInfo;
	}
	
	
	
	
	
	
	
}
