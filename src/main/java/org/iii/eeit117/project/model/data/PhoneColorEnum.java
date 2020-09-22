package org.iii.eeit117.project.model.data;

import com.fasterxml.jackson.annotation.JsonValue;

public enum PhoneColorEnum {

	/* 太空灰 */
	SPACE_GREY("太空灰", "太空灰")

	/* 銀 */
	, GREY("銀色", "銀")

	/* 金 */
	, GOLD("金色", "金")

	/* 玫瑰金 */
	, ROSE_GOLD("玫瑰金", "玫瑰金")

	/* 黑 */
	, BLACK("黑色", "黑")

	/* 曜石黑 */
	, JET_BLACK("曜石黑", "曜石黑")

	/* 白 */
	, WHITE("白色", "白")

	/* 藍 */
	, BLUE("藍色", "藍")

	/* 黃 */
	, YELLOW("黃色", "黃")

	/* 珊瑚 */
	, CORAL("珊瑚", "珊瑚")

	/* 紅 */
	, RED("紅色", "紅")

	/* 紫 */
	, PURPLE("紫色", "紫")

	/* 綠 */
	, GREEN("綠色", "綠")

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
	@JsonValue
	public String getLabel() {
		return label;
	}

	public String getCode() {
		return code;
	}

}
