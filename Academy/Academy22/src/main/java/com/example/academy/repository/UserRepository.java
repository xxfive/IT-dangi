package com.example.academy.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;


import com.example.academy.model.User;



public interface UserRepository extends JpaRepository<User, Integer>{

	User findByUseridAndPassword(String userid, String password);

	
}
