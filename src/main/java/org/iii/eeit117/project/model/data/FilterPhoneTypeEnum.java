package org.iii.eeit117.project.model.data;

import com.fasterxml.jackson.annotation.JsonValue;

public enum FilterPhoneTypeEnum {

	/* iPhone 6 */
	IPHONE_6("iPhone 6系列", "iPhone6")

	/* iPhone 7 */
	, IPHONE_7("iPhone 7系列", "iPhone7")

	/* iPhone 8 */
	, IPHONE_8("iPhone 8系列", "iPhone8")
	
	/* iPhone SE */
	, IPHONE_SE("iPhone SE系列", "iPhoneSE")

	/* iPhone X */
	, IPHONE_X("iPhone X系列", "iPhoneX")

	/* iPhone 11 */
	, IPHONE_11("iPhone 11系列", "iPhone11");


	private String label;

	private String code;
	
	private FilterPhoneTypeEnum(String label, String code) {
		this.label = label;
		this.code = code;
	}
	
	public static FilterPhoneTypeEnum findFromCode(String code) {
		for (FilterPhoneTypeEnum e : FilterPhoneTypeEnum.values()) {
			if (e.getCode().equals(code)) {
				return e;
			}
		}
		return null;
	}
	@JsonValue
	public String getLabel() {
		return label;
	}
	
	public String getCode() {
		return code;
	}

}
