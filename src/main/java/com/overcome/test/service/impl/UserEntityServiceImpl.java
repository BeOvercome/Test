package com.overcome.test.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.googlecode.objectify.Objectify;
import com.googlecode.objectify.ObjectifyService;
import com.overcome.dao.ObjectifyDao;
import com.overcome.test.entity.UserEntity;
import com.overcome.test.service.UserEntityService;

import java.util.List;

@Service
public class UserEntityServiceImpl implements UserEntityService{
	@Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;
	
	private final Objectify objectify;

	@Autowired
	public UserEntityServiceImpl(Objectify objectify) {
	        this.objectify = objectify;
	}
	
	@Override
    public void save(UserEntity user) {
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        objectify.save().entity(user).now();
    }

    @Override
    public UserEntity findByUsername(String username) {
    	Objectify ofy = ObjectifyService.ofy();
        return ofy.load().type(UserEntity.class).filter("username", username).first().now();
    }

	@Override
	public List<UserEntity> getAll() {
		Objectify ofy = ObjectifyService.ofy();
		return ofy.load().type(UserEntity.class).list();
	}

	@Override
	public void setObjectifyDao(ObjectifyDao<UserEntity> var1) {

	}


}
