package org.iii.eeit117.project.model.data;

public enum HelloTypeEnum {

	/* Hello Man */
	HELLO_MAN("Hello 男人!")
	/* Hello Woman */
	, HELLO_WOMAN("Hello 女人!");
	
	private String msg;
	
	private HelloTypeEnum(String msg) {
		this.msg = msg;
	}
	
	public String getMsg() {
		return msg;
	}
	
}
