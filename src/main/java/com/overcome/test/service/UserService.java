package com.overcome.test.service;

import java.util.List;

import com.overcome.test.entity.User;

public interface UserService {

	public void save(User user);
	
	public User findByNameUser(String username);
	
	List<User> getAll();
}
