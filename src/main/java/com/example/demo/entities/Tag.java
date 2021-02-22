package com.example.demo.entities;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name="tags")
public class Tag implements Serializable{

	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue
	@Column(name="id")
	private Long id;
	
	private String name;
	
	private String color;
	
	@ManyToMany(mappedBy="tasks")
	private List<Task> tasks = new ArrayList<Task>();
	
	
	public Tag() {}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}
	
	
	

}
