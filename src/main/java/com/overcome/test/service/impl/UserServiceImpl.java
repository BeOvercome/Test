package com.overcome.test.service.impl;

import java.util.List;

import com.googlecode.objectify.Objectify;
import com.googlecode.objectify.ObjectifyService;
import com.googlecode.objectify.cmd.Query;
import com.overcome.test.entity.User;
import com.overcome.test.service.UserService;

public class UserServiceImpl implements UserService {
	
	Objectify ofy = ObjectifyService.ofy();

	@Override
	public void save(User user) {
		
		ofy.save().entity(user).now();
	}

	@Override
	public User findByNameUser(String username) {
		
		return ofy.load().type(User.class).filter("name", username).first().now();
	}

	@Override
	public List<User> getAll() {
		
		Query<User> query = ofy.load().type(User.class);
		List<User> usuarios = query.list();
		
		return usuarios;
	}

}
