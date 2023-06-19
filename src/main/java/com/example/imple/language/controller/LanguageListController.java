package com.example.imple.language.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.imple.language.mapper.LanguageMapper;
import com.example.standard.controller.PageableController;
import com.example.standard.controller.ListController;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import jakarta.servlet.http.HttpServletRequest;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/language")
@Slf4j
public class LanguageListController implements ListController, PageableController{
	
	@Autowired
	LanguageMapper mapper;
	
	@Autowired
	ObjectMapper json;

	
	@Override
	public void list(Model model, HttpServletRequest request) {
		var list = mapper.selectAll();
		model.addAttribute("list",list);
	}

	
	@Override
	public String page(int pageNum, int pageSize, Model model) {
		log.trace("page(int pageNum, int pageSize, Model model) called");
		PageHelper.startPage(pageNum, pageSize);
		var list = mapper.selectAll();
		var paging = PageInfo.of(list,10);
		model.addAttribute("list", list);
		model.addAttribute("paging", paging);
		log.debug(paging.toString());
		
		return "language/page";
	}


}
