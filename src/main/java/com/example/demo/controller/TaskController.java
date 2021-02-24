package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

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
	
	
	
	
	
	
	
	
	
	
}
