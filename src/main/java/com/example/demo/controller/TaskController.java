package com.example.demo.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;


import com.example.demo.entities.Task;
import com.example.demo.repository.ProjectRepository;
import com.example.demo.repository.TagRepository;
import com.example.demo.repository.TaskRepository;
import com.example.demo.repository.UserRepository;

@Controller
public class TaskController {

	@Autowired
	private TaskRepository taskRepository;
	
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private ProjectRepository projectRepository;
	
	@Autowired
	private TagRepository tagRepository;
	
	@GetMapping("/tasks")
	public String findTasks(Model model) {
		model.addAttribute("tasks", taskRepository.findAll());
		return "task-list";
	}
	
	
	
	@GetMapping("/tasks/{id}/view")
	public String viewTask(@PathVariable Long id, Model model) {
		if (id == null) {
			return "redirect:/tasks";
		}
		Optional<Task> taskOpt = taskRepository.findById(id);
		if (taskOpt.isPresent()) {
			model.addAttribute("task", taskOpt.get());
			return "task-view";
		}
		return "redirect:/tasks";
	}
	@GetMapping("/tasks/new")
	public String obtenerFormularioTask(Model model) {
		model.addAttribute("task", new Task());
		model.addAttribute("users", userRepository.findAll());
		model.addAttribute("tags", tagRepository.findAll());
		return "task-edit";
	}
	
	@PostMapping
	public String crearTasko(@ModelAttribute("task") Task task) {
		taskRepository.save(task);
		return "redirect:/tasks";
	}
	
	
	@GetMapping("/{id}/delete")
	public String borrarTask(@PathVariable Long id) {
		taskRepository.deleteById(id);
		return "redirect:/tasks";
	}
	
	
	
	
}
