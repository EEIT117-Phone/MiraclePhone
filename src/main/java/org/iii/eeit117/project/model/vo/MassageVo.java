package org.iii.eeit117.project.model.vo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Massage")
public class MassageVo {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "MID")
	private Integer mId;
	
	@Column(name="PRODUCTID")
	private Integer productId;
	
	@Column(name="MASSAGE")
	private String massage;
	
	@Column(name="BUYERACCOUNT")
	private String buyeraccount;
	
	@Column(name="ANSWERACCOUNT")
	private String answeraccount;
	
	@Column(name="LEAVETIME")
	private String leaveTime;
	
	@Column(name="ANSWER")
	private String answer;
	
	@Column(name="ANSTIME")
	private String ansTime;
	
	
	public String getAnsTime() {
		return ansTime;
	}
	public void setAnsTime(String ansTime) {
		this.ansTime = ansTime;
	}
	public Integer getmId() {
		return mId;
	}
	public void setmId(Integer mId) {
		this.mId = mId;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	public Integer getProductId() {
		return productId;
	}
	public void setProductId(Integer productId) {
		this.productId = productId;
	}
	public String getMassage() {
		return massage;
	}
	public void setMassage(String massage) {
		this.massage = massage;
	}
	public String getLeaveTime() {
		return leaveTime;
	}
	public void setLeaveTime(String leaveTime) {
		this.leaveTime = leaveTime;
	}
	
	public String getBuyeraccount() {
		return buyeraccount;
	}
	public void setBuyeraccount(String buyeraccount) {
		this.buyeraccount = buyeraccount;
	}
	public String getAnsweraccount() {
		return answeraccount;
	}
	public void setAnsweraccount(String answeraccount) {
		this.answeraccount = answeraccount;
	}
	
}
