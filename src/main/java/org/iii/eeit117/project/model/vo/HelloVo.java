package org.iii.eeit117.project.model.vo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.iii.eeit117.project.model.data.HelloTypeEnum;

@Entity
@Table(name = "HELLO")
public class HelloVo {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "NAME")
	private String name;
	
	@Column(name = "EN_NAME")
	private String enName;
	
	@Column(name = "AGE")
	private Integer age;
	
	@Column(name = "type")
	private HelloTypeEnum type;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEnName() {
		return enName;
	}

	public void setEnName(String enName) {
		this.enName = enName;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public HelloTypeEnum getType() {
		return type;
	}

	public void setType(HelloTypeEnum type) {
		this.type = type;
	}
	
}
