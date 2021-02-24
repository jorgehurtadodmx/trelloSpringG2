package com.example.demo.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.example.demo.entities.Project;
import com.example.demo.entities.Task;
import com.example.demo.repository.TaskRepository;

@Controller
public class TaskController {

	@Autowired
	private TaskRepository taskRepository;
	
	@GetMapping("/tasks")
	public String findTasks(Model model) {
		model.addAttribute("tasks", taskRepository.findAll());
		return "task-list";
	}
	
	@GetMapping("/tasks/{id}/view")
	public String view(@PathVariable Long id, Model model) {
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
	
	
	
	
	
	
	
	
}
