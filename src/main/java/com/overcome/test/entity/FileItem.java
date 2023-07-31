package com.overcome.test.entity;

import com.googlecode.objectify.annotation.Id;

public class FileItem {
	private String name;
	@Id Long id;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	
	
}
