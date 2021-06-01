package com.techgeeks.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.techgeeks.model.User;
import com.techgeeks.repository.UserRepository;

@Component
public class UserService implements UserDao{
	
	@Autowired
	UserRepository userRepository;

	@Override
	public User getByEmail(String email) {
		User user = userRepository.findByEmail(email);
		return user;
	}

	@Override
	public void saveUser(User user) {
		userRepository.save(user);
	}

	
}
