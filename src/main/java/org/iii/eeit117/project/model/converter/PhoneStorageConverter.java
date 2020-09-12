package org.iii.eeit117.project.model.converter;

import javax.persistence.AttributeConverter;

import org.iii.eeit117.project.model.data.PhoneStorageEnum;

public class PhoneStorageConverter implements AttributeConverter<PhoneStorageEnum,String> {

	@Override
	public String convertToDatabaseColumn(PhoneStorageEnum attribute) {
		return attribute.getCode();
	}

	@Override
	public PhoneStorageEnum convertToEntityAttribute(String dbData) {
		return PhoneStorageEnum.findFromCode(dbData);
	}

}
