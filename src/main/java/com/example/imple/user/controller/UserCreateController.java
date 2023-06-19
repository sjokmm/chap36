package com.example.imple.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.imple.user.mapper.UserMapper;
import com.example.imple.user.model.UserDTO;
import com.example.standard.controller.CreateController;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.validation.Valid;

@Controller
@RequestMapping("/user")
public class UserCreateController implements CreateController<UserDTO> {
	
	@Autowired
	UserMapper mapper;
	
	@Override
	public void create(Model model, HttpServletRequest request) {
		var error = request.getParameter("error");
		if(error == null) {
			var session = request.getSession();
			session.removeAttribute("user");
			session.removeAttribute("binding");
		}
	}

	@Override
	@Transactional
	public String create(@Valid UserDTO dto, BindingResult binding, Model model, HttpServletRequest request,
			RedirectAttributes attr) {
		
		var session = request.getSession();
		session.setAttribute("user", dto);
		session.setAttribute("binding", binding);
		
		if(binding.hasErrors())
			return "redirect:/user/join?error";
		
		var user = dto.getModel();
		try {
			mapper.insertUser(user);
		} catch (DuplicateKeyException e) {
			binding.reject("duplicatekey","이미 존재하는 아이디입니다.");
			
			return "redirect:/user/join?error";
		}
			
		return "redirect:/user/success?create";
	}

}
