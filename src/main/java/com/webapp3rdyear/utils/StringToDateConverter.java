package com.webapp3rdyear.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import jakarta.persistence.AttributeConverter;
import jakarta.persistence.Converter;

@Converter(autoApply = false)  // autoApply = false nghĩa là chỉ áp dụng khi được khai báo trong entity
public class StringToDateConverter implements AttributeConverter<String, Date> {

    private static final SimpleDateFormat FORMATTER = new SimpleDateFormat("yyyy-MM-dd");

    @Override
    public Date convertToDatabaseColumn(String attribute) {
        if (attribute == null || attribute.isEmpty()) {
            return null;
        }
        try {
            return FORMATTER.parse(attribute);  // Chuyển String thành Date
        } catch (ParseException e) {
            throw new IllegalArgumentException("Invalid date format: " + attribute, e);
        }
    }

    @Override
    public String convertToEntityAttribute(Date dbData) {
        if (dbData == null) {
            return null;
        }
        return FORMATTER.format(dbData);  // Chuyển Date thành String
    }
}
