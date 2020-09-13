package org.iii.eeit117.project.model.vo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "CUSTOMERSERVICE")
public class CustomerServiceVo {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "contactid", nullable = false)
	private Integer contactid;

	@Column(name = "account")
	private String account;

	@Column(name = "selectq1")
	private String selectq1;

	@Column(name = "selectq2")
	private String selectq2;

	@Column(name = "question")
	private String question;

	@Column(name = "answer")
	private String answer;
	
	@Column(name = "questiondate")
	private String date;

	

	public Integer getContactid() {
		return contactid;
	}

	public void setContactid(Integer customerid) {
		this.contactid = customerid;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getSelectq1() {
		return selectq1;
	}

	public void setSelectq1(String selectq1) {
		this.selectq1 = selectq1;
	}

	public String getSelectq2() {
		return selectq2;
	}

	public void setSelectq2(String selectq2) {
		this.selectq2 = selectq2;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	
}
