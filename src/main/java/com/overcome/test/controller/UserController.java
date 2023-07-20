package com.overcome.test.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.overcome.test.entity.User;
import com.overcome.test.service.impl.UserServiceImpl;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserServiceImpl service;
	
	@PostMapping("/save")
	public String save(@RequestBody User user, Model model) {
		
		if (service.findByNameUser(user.getName()) != null) {
			
			String dialogScript = "alert('El usuario ya existe.');";
			model.addAttribute("dialogScript", dialogScript);
			
			return "page.login";
		}
		
		User usuario = new User();
		usuario.setName(user.getName());
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		String encodedPassword = encoder.encode(user.getPassword());
		usuario.setPassword(encodedPassword);
		
		service.save(usuario);
		
		return "getall-view";
	}
	
	public User getUser(@RequestParam("name") String name, Model model) {
		
		User user = service.findByNameUser(name);
		
		return user;
	}
	
}
