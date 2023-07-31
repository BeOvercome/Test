package com.overcome.test.service.impl;

import com.googlecode.objectify.Key;
import com.overcome.test.entity.UserEntity;
import com.overcome.test.service.UserEntityService;

import com.googlecode.objectify.Objectify;
import com.googlecode.objectify.ObjectifyService;

public class UserEntityServiceImpl extends BaseEntityServiceImpl implements UserEntityService{
	
	public void save(UserEntity entity) {
		
		Objectify objectify = ObjectifyService.ofy();
		objectify.load().type(UserEntity.class).id(entity.getId()).now();
		objectify.save();
	}
	
}