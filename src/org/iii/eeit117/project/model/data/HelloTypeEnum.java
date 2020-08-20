package org.iii.eeit117.project.model.data;

public enum HelloTypeEnum {

	/* Hello Man */
	HELLO_MAN("Hello Man!")
	/* Hello Woman */
	, HELLO_WOMAN("Hello Woman!");
	
	private String msg;
	
	private HelloTypeEnum(String msg) {
		this.msg = msg;
	}
	
	public String getMsg() {
		return msg;
	}
}
