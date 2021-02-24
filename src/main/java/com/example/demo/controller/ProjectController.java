package com.example.demo.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;


import com.example.demo.entities.Project;

import com.example.demo.repository.ProjectRepository;


@Controller
public class ProjectController {
	
	@Autowired
	private ProjectRepository projectRepository;
	// main project site
	@GetMapping("/projects")
	public String findProject(Model model) {
		model.addAttribute("project", projectRepository.findAll());
		return "project-list";
	}
	
	
	//view of single project
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

	
	//creation of projects
	@GetMapping("projects/new")
	public String obtenerFormularioProyecto(Model model) {
		model.addAttribute("project", new Project());
		model.addAttribute("projects", projectRepository.findAll());
		return "project-edit"; // aqui devolvemos la vista

	}
	@PostMapping("/projects")
	public String postFormularioProyecto(@ModelAttribute("project") Project project) {
		projectRepository.save(project);
		return "redirect:/projects"; 
	}
	
	
	//deletion of single project
	//@GetMapping("/projects/{id}/delete")
	//public String borrarProjecto(@PathVariable Long id) {
	//projectRepository.deleteById(id);
	//	return "redirect:/projects"; //fallo
	//}
	
	
	

}
