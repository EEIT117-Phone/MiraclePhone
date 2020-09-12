package org.iii.eeit117.project.model.data;

public enum PhoneColorEnum {

	/* 太空灰 */
	SPACE_GREY("太空灰", "太空灰")

	/* 銀 */
	, GREY("銀", "銀")

	/* 金 */
	, GOLD("金", "金")

	/* 玫瑰金 */
	, ROSE_GOLD("玫瑰金", "玫瑰金")

	/* 黑 */
	, BLACK("黑", "黑")

	/* 曜石黑 */
	, JET_BLACK("曜石黑", "曜石黑")

	/* 白 */
	, WHITE("白", "白")

	/* 藍 */
	, BLUE("藍", "藍")

	/* 黃 */
	, YELLOW("黃", "黃")

	/* 珊瑚 */
	, CORAL("珊瑚", "珊瑚")

	/* 紅 */
	, RED("紅", "紅")

	/* 紫 */
	, PURPLE("紫", "紫")

	/* 綠 */
	, GREEN("綠", "綠")

	/* 夜幕綠 */
	, MIDNIGHT_GREEN("夜幕綠", "夜幕綠");

	private String label;

	private String code;

	private PhoneColorEnum(String label, String code) {
		this.label = label;
		this.code = code;
	}

	public static PhoneColorEnum findFromCode(String code) {
		for (PhoneColorEnum e : PhoneColorEnum.values()) {
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
