package org.iii.eeit117.project.model.vo;



import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;


import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "Users")
public class UserVo {

	@Id
	@Column(name = "account")
	private String account;

	@Column(name = "password")
	private String password;

	@Column(name = "name")
	private String name;

	@Column(name = "idnumber")
	private String idnumber;

	@Column(name = "sex")
	private String sex;

	@Column(name = "age")
	private String age;

	@Column(name = "birth")
	private String birth;

	@Column(name = "county")
	private String county;

	@Column(name = "district")
	private String district;

	@Column(name = "zipcode")
	private String zipcode;

	@Column(name = "seller")
	private String seller;

	@Column(name = "gm")
	private String gm;

	@Column(name = "photo")
	private byte[] photo;
	
//	@OneToMany(fetch = FetchType.LAZY)
//	private Set<SellerVo> sellerVos;

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "orderId")
	private Set<OrderInfoVo> orderInfoVos;

	public String getAccount() {
		return account;
	}

	public UserVo() {

	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getIdnumber() {
		return idnumber;
	}

	public void setIdnumber(String idnumber) {
		this.idnumber = idnumber;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public  String getAge() {
		return age;
	}

	public void setAge( String age) {
		this.age = age;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
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

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getSeller() {
		return seller;
	}

	public void setSeller(String seller) {
		this.seller = seller;
	}

	public String getGm() {
		return gm;
	}

	public void setGm(String gm) {
		this.gm = gm;
	}

	public byte[] getPhoto() {
		return photo;
	}

	public void setPhoto(byte[] photo) {
		this.photo = photo;
	}

	public Set<OrderInfoVo> getOrderInfoVo() {
		return orderInfoVos;
	}

	public void setOrderInfoVo(Set<OrderInfoVo> orderInfoVo) {
		this.orderInfoVos = orderInfoVo;
	}
	
	

}
