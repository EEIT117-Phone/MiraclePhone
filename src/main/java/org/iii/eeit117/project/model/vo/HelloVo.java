package org.iii.eeit117.project.model.vo;

import org.iii.eeit117.project.model.data.HelloTypeEnum;

public class HelloVo {

	private Integer id;
	
	private String name;
	
	private String enName;
	
	private Integer age;
	
	private HelloTypeEnum type;
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

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
