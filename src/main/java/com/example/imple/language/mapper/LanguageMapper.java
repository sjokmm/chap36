package com.example.imple.language.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.example.imple.city.model.City;
import com.example.imple.country.model.Country;
import com.example.imple.dept.model.Dept;
import com.example.imple.language.model.Language;
import com.github.pagehelper.Page;

@Mapper
public interface LanguageMapper {
	
	int countAll();
	
	Language selectLanguage();
	
	List<Language> selectAll();
	
	Page<Language> selectPage();
}



