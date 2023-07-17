package com.overcome.test.entity;
import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;

@Entity(name = "user")
public class UserEntity {
	 @Id
     private Long id;
	 private String username;
	 private String password;

	public UserEntity(Long id) {
		this.id = id;
	}

	public UserEntity() {
	}


	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
}
