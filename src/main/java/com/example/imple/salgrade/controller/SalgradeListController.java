package com.example.imple.salgrade.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.imple.salgrade.mapper.SalgradeMapper;
import com.example.standard.controller.PageableController;
import com.example.standard.controller.ListController;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import jakarta.servlet.http.HttpServletRequest;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/salgrade")
public class SalgradeListController implements ListController {
	
	@Autowired
	SalgradeMapper mapper;
	
	@Override
	public void list(Model model, HttpServletRequest request) {
		var list = mapper.selectAll();
		model.addAttribute("list",list);
	}
	
}
