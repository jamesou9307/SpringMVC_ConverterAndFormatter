package com.james.converter;

import org.springframework.core.convert.converter.Converter;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class StringToDateConverter implements Converter<String,Date>{

    private String datePattern;

    public StringToDateConverter(String datePattern) {
        this.datePattern = datePattern;
        System.out.println("converter pattern:"+datePattern);
    }

    @Override
    public Date convert(String s) {
        try{
            SimpleDateFormat sdf=new SimpleDateFormat(datePattern);
            sdf.setLenient(false);
            return sdf.parse(s);
        }catch (ParseException pe){
            //在页面使用<form:errors>标签时会显示异常信息
            throw new IllegalArgumentException("invalid date format.please use this pattern："+datePattern);
        }

    }
}
