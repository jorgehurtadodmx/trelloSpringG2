package com.example.demo.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.example.demo.entities.Project;
import com.example.demo.entities.User;
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
	
	@GetMapping("/projects/{id}/view")
	public String view(@PathVariable Long id, Model model) {
		if (id == null) {
			return "redirect:/projects";
		}
		Optional<Project> projectOpt = projectRepository.findById(id);
		if (projectOpt.isPresent()) {
			model.addAttribute("project", projectOpt.get());
			return "project-view";
		}
		return "redirect:/projects";
	}



}
