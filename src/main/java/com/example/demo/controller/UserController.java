package com.example.demo.controller;

import java.util.ArrayList;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.demo.entities.Project;
import com.example.demo.entities.Task;
import com.example.demo.entities.User;
import com.example.demo.repository.ProjectRepository;
import com.example.demo.repository.UserRepository;

@Controller
public class UserController {

	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private ProjectRepository projectRepository;
	
	
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
	
	//creation of users
	@GetMapping("users/new")
	public String obtenerFormularioUser(Model model) {
		model.addAttribute("user", new User());
		model.addAttribute("projects", projectRepository.findAll());
		return "user-edit"; // aqui devolvemos la vista

	}
	
	
	
	//editing single user
	@GetMapping("/users/{id}/edit")
	public String editUser(@PathVariable Long id, Model model) {
		if(id == null) // 1. se comprueba que el id no sea nulo
			return "redirect:/users";
		
		Optional<User> userOpt = userRepository.findById(id);
		if (userOpt.isPresent()) { // 2. se comprueba que existe un producto para ese id
			model.addAttribute("user", userOpt.get());

			return "user-edit";
		}
		model.addAttribute("error", "No existe el user solicitado");
		return "redirect:/users";
	}
	@PostMapping("/users")
	public String postFormularioUser(@ModelAttribute("user") User user) {
		userRepository.save(user);
		return "redirect:/users"; 
	}

	//deletion of single project
	//@GetMapping("/projects/{id}/delete")
//	public String borrarProjecto(@PathVariable Long id) {
	//	Optional<Project> projectOpt = projectRepository.findById(id);
	//	if (!projectOpt.isPresent()) 
	//		return "redirect:/projects";
		
	//	Project project = projectOpt.get();
		
	//	for (Task task: project.getTasks()) {
	//		task.setTags(new ArrayList<>());
	//		task.setUsers(new ArrayList<>());
	//	}
	//	taskRepository.saveAll(project.getTasks());
		
	//	projectRepository.deleteById(id);
	//	return "redirect:/projects"; //fallo
	//}
	
	
	
	
}
