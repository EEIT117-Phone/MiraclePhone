package org.iii.eeit117.project.model.data;

public enum PhoneStorageEnum {

	/* 16G */
	STORAGE_16G("16G", "16G")
	
	/* 32G */
	, STORAGE_32G("32G", "32G")
	
	/* 64G */
	, STORAGE_64G("64G", "64G")
	
	/* 128G */
	, STORAGE_128G("128G", "128G")
	
	/* 256G */
	, STORAGE_256G("256G", "256G")
	
	/* 512G */
	, STORAGE_512G("512G", "512G");
	
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
	
	public String getLabel() {
		return label;
	}

	public String getCode() {
		return code;
	}

}
