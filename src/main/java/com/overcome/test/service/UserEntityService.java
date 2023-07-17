package com.overcome.test.service;

import com.overcome.dao.ObjectifyDao;
import com.overcome.test.entity.UserEntity;

import java.util.List;

public interface UserEntityService {
    void setObjectifyDao(ObjectifyDao<UserEntity> var1);

	void save(UserEntity user);
	UserEntity findByUsername(String username);

	List<UserEntity> getAll();
}