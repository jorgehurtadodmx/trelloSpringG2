package com.example.demo.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.example.demo.entities.User;
import com.example.demo.repository.UserRepository;

@Controller
public class UserController {

	@Autowired
	private UserRepository userRepository;
	
	@GetMapping("/users")
	public String findUsers(Model model) {
		model.addAttribute("users", userRepository.findAll());
		return "user-list";
	}
	
	@GetMapping("/users/{id}/view")
	public String view(@PathVariable Long id, Model model) {
		if (id == null) {
			return "redirect:/users";
		}
		Optional<User> userOpt = userRepository.findById(id);
		if (userOpt.isPresent()) {
			model.addAttribute("user", userOpt.get());
			return "user-view";
		}
		return "redirect:/users";
	}
	
	
	
	
	
	
	
	
}
