package org.iii.eeit117.project.model.converter;

import javax.persistence.AttributeConverter;

import org.iii.eeit117.project.model.data.PhoneTypeEnum;

public class PhoneTypeConverter implements AttributeConverter<PhoneTypeEnum,String> {

	@Override
	public String convertToDatabaseColumn(PhoneTypeEnum attribute) {
		return attribute.getCode();
	}

	@Override
	public PhoneTypeEnum convertToEntityAttribute(String dbData) {
		return PhoneTypeEnum.findFromCode(dbData);
	}

}
