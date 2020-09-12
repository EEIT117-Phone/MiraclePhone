package org.iii.eeit117.project.model.data;

public enum PhoneTypeEnum {

	/* iPhone 6 */
	IPHONE_6("iPhone 6", "iPhone6")

	/* iPhone 6 Plus */
	, IPHONE_6_PLUS("iPhone 6 Plus", "iPhone6Plus")

	/* iPhone 6s */
	, IPHONE_6S("iPhone 6s", "iPhone6s")

	/* iPhone 6s Plus */
	, IPHONE_6S_PLUS("iPhone 6s Plus", "iPhone6sPlus")

	/* iPhone SE (第一代) */
	, IPHONE_SE("iPhone SE (第一代)", "iPhoneSE")

	/* iPhone 7 */
	, IPHONE_7("iPhone 7", "iPhone7")

	/* iPhone 7 Plus */
	, IPHONE_7_PLUS("iPhone 7 Plus", "iPhone7Plus")

	/* iPhone 8 */
	, IPHONE_8("iPhone 8", "iPhone8")

	/* iPhone 8 Plus */
	, IPHONE_8_PLUS("iPhone 8 Plus", "iPhone8Plus")

	/* iPhone X */
	, IPHONE_X("iPhone X", "iPhoneX")

	/* iPhone XR */
	, IPHONE_XR("iPhone XR", "iPhoneXR")

	/* iPhone XS */
	, IPHONE_XS("iPhone XS", "iPhoneXS")

	/* iPhone XS Max */
	, IPHONE_XS_MAX("iPhone XS Max", "iPhoneXSMax")

	/* iPhone 11 */
	, IPHONE_11("iPhone 11", "iPhone11")

	/* iPhone 11 Pro */
	, IPHONE_11_PRO("iPhone 11 Pro", "iPhone11Pro")

	/* iPhone 11 Pro Max */
	, IPHONE_11_PRO_MAX("iPhone 11 Pro Max", "iPhone11ProMax")

	/* iPhone SE (第二代) */
	, IPHONE_SE2("iPhone SE (第二代)", "iPhoneSE2");

	private String label;

	private String code;
	
	private PhoneTypeEnum(String label, String code) {
		this.label = label;
		this.code = code;
	}
	
	public static PhoneTypeEnum findFromCode(String code) {
		for (PhoneTypeEnum e : PhoneTypeEnum.values()) {
			if (e.getCode().equals(code)) {
				return e;
			}
		}
		return null;
	}

	public String getLabel() {
		return label;
	}
	
	public String getCode() {
		return code;
	}

}
