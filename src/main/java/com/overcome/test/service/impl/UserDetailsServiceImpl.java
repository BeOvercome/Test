package com.overcome.test.service.impl;

import java.util.HashSet;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.security.core.GrantedAuthority;

import com.overcome.test.entity.UserEntity;
import com.overcome.test.service.UserEntityService;
@Service
public class UserDetailsServiceImpl implements UserDetailsService{
	@Autowired
    private UserEntityService userEntityService;
	@Override
	 @Transactional(readOnly = true)
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		 UserEntity user = userEntityService.findByUsername(username);

	        Set < GrantedAuthority > grantedAuthorities = new HashSet < > ();


	        return new org.springframework.security.core.userdetails.User(user.getUsername(), user.getPassword(), grantedAuthorities);
	    }

}
