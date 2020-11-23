package com.example.academy.service;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.academy.model.User;
import com.example.academy.repository.UserRepository;

import lombok.RequiredArgsConstructor;

@Service
public class UserService {
	
	@Autowired
	private UserRepository userRepository;
	
	
	@Transactional
	public int join(User user) {
		try {
			userRepository.save(user);
			return 1;
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("UserService:회원가입():"+e.getMessage());
		}
		return -1;
	}
	
	@Transactional(readOnly = true)
	public User login(User user) {
		return userRepository.findByUseridAndPassword(user.getUserid(), user.getPassword());
	}

	@Transactional
	public void userUpdate(User user, String password, String email, String phone) {
		user.setPassword(password);
		user.setEmail(email);
		user.setPhone(phone);

		
	}


	
}
