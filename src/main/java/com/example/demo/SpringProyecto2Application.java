package com.example.demo;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import com.example.demo.entities.Project;
import com.example.demo.entities.Tag;
import com.example.demo.entities.Task;
import com.example.demo.entities.User;
import com.example.demo.repository.ProjectRepository;
import com.example.demo.repository.TagRepository;
import com.example.demo.repository.TaskRepository;
import com.example.demo.repository.UserRepository;

@SpringBootApplication
public class SpringProyecto2Application implements CommandLineRunner{

	@Autowired
	private TaskRepository taskRepository;
	
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private ProjectRepository projectRepository;
	
	@Autowired
	private TagRepository tagRepository;
	
	public static void main(String[] args) {
		SpringApplication.run(SpringProyecto2Application.class, args);
	}

	@Override
	public void run(String... args) throws Exception {

		User user1 = new User();
		user1.setFirstName("Guillermo2");
		//userRepository.save(user1);
		
		User user2 = new User();
		user2.setFirstName("Jorge2");
		userRepository.save(user2);
		List<User> users = Arrays.asList(user1, user2);
		Project project = new Project();
		project.setName("PROYECTO 2");
		//projectRepository.save(project);
		
		
		Tag todo = new Tag();
		todo.setName("NEW");
		Tag inprogress = new Tag();
		inprogress.setName("IN PROGRESS");
	//	tagRepository.save(todo);
	//	tagRepository.save(inprogress);
		
		Task task1 = new Task();
		task1.setTitle("AAAAAAAAAAA2");
		task1.setDescription("AAAAAAAAAAAA2");
		task1.setProject(project);
		task1.setUsers(users);
		task1.getTags().add(todo);
		task1.getTags().add(inprogress);

		//taskRepository.save(task1);
		
		
		
		
		
		
		
		
		
		
		
	}

}
