package com.techgeeks.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.techgeeks.model.User;

@Repository
public interface UserRepository extends  JpaRepository<User, Integer>{

	User findByEmail(String email);
}
