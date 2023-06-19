package com.example.imple.salgrade.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.example.imple.salgrade.model.Salgrade;
import com.github.pagehelper.Page;

@Mapper
public interface SalgradeMapper {
	
	int countAll();
	
	Salgrade selectSalgrade();
	
	@Select("select * from salgrade")
	List<Salgrade> selectAll();
	
}



