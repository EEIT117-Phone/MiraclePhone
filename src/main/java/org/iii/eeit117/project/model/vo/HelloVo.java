package org.iii.eeit117.project.model.vo;

import org.iii.eeit117.project.model.data.HelloTypeEnum;

public class HelloVo {

	private String name;
	
	private String enName;
	
	private Integer age;
	
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
	
	public static void main(String[] args) {
		HelloVo hello = new HelloVo();
		hello.setType(HelloTypeEnum.HELLO_MAN);
		
		
		if (hello.getType() == HelloTypeEnum.HELLO_MAN) {
			System.out.println("1");
		} else if (hello.getType() == HelloTypeEnum.HELLO_WOMAN) {
			System.out.println("2");
		}
	}
	
}
