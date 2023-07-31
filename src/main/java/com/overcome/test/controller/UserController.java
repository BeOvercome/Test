package com.overcome.test.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/users")
public class UserController{
	@RequestMapping("/signin")
	public ModelAndView showSignin() {
		return new ModelAndView("page.signin");
	}
	
	@RequestMapping("/logout")
	public String logout() {
		//return new ModelAndView("page.logout");
		
		return "redirect:/page.login";
	}
}