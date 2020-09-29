package org.iii.eeit117.project.model.data;

import com.fasterxml.jackson.annotation.JsonValue;

public enum FilterCountryEnum {

	Country_1("臺北市", "臺北市")
	, Country_2("新北市", "新北市")
	, Country_3("基隆市", "基隆市")
	, Country_4("基隆市", "基隆市")
	, Country_5("桃園市", "桃園市")
	, Country_6("新竹縣/市", "新竹")
	, Country_7("苗栗縣", "苗栗縣")
	, Country_8("臺中市", "臺中市")
	, Country_9("彰化縣", "彰化縣")
	, Country_10("南投縣", "南投縣")
	, Country_11("雲林縣", "雲林縣")
	, Country_12("嘉義縣/市", "嘉義")
	, Country_13("臺南市", "臺南市")
	, Country_14("高雄市", "高雄市")
	, Country_15("屏東縣", "屏東縣")
	, Country_16("宜蘭縣", "宜蘭縣")
	, Country_17("花蓮縣", "花蓮縣")
	, Country_18("臺東縣", "臺東縣");

	private String label;

	private String code;
	
	private FilterCountryEnum(String label, String code) {
		this.label = label;
		this.code = code;
	}
	
	public static FilterCountryEnum findFromCode(String code) {
		for (FilterCountryEnum e : FilterCountryEnum.values()) {
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
