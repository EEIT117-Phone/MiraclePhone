package org.iii.eeit117.project.model.converter;

import javax.persistence.AttributeConverter;

import org.iii.eeit117.project.model.data.PhoneColorEnum;

public class PhoneColorConverter implements AttributeConverter<PhoneColorEnum,String> {

	@Override
	public String convertToDatabaseColumn(PhoneColorEnum attribute) {
		return attribute.getCode();
	}

	@Override
	public PhoneColorEnum convertToEntityAttribute(String dbData) {
		return PhoneColorEnum.findFromCode(dbData);
	}

}
