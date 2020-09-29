package org.iii.eeit117.project.model.data;

import com.fasterxml.jackson.annotation.JsonValue;

public enum PhoneStorageEnum {

	/* 16G */
	STORAGE_16G("16 G", "16G")
	
	/* 32G */
	, STORAGE_32G("32 G", "32G")
	
	/* 64G */
	, STORAGE_64G("64 G", "64G")
	
	/* 128G */
	, STORAGE_128G("128 G", "128G")
	
	/* 256G */
	, STORAGE_256G("256 G", "256G")
	
	/* 512G */
	, STORAGE_512G("512 G", "512G");
	
	private String label;
	
	private String code;
	
	private PhoneStorageEnum(String label, String code) {
		this.label = label;
		this.code = code;
	}
	
	public static PhoneStorageEnum findFromCode(String code) {
		for (PhoneStorageEnum e : PhoneStorageEnum.values()) {
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
