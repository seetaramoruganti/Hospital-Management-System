package com.techgeeks.dao;

import com.techgeeks.model.User;

public interface UserDao {
	
	public User getByEmail(String email);
	public void saveUser(User user);
}
