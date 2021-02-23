package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.example.demo.repository.ProjectRepository;


@Controller
public class ProjectController {
	
	@Autowired
	private ProjectRepository projectRepository;
	
	@GetMapping("/projects")
	public String findProject(Model model) {
		model.addAttribute("project", projectRepository.findAll());
		return "project-list";
	}
	
}
