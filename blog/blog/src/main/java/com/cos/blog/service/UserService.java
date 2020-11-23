package com.cos.blog.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cos.blog.model.RoleType;
import com.cos.blog.model.User;
import com.cos.blog.repository.UserRepository;

@Service
public class UserService {

	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private BCryptPasswordEncoder encoder;
	
	//회원가입
	@Transactional
	public void save(User user) {
		String rawPassword=user.getPassword();
		String encPassword=encoder.encode(rawPassword);
		user.setPassword(encPassword);
		user.setRole(RoleType.USER);
		userRepository.save(user);
	}
	
	//회원수정
	@Transactional
	public void userUpdate(User user) {
		User persistance=userRepository.findById(user.getId())
				.orElseThrow(()->{
					return new IllegalArgumentException("회원 찾기 실패");
				});
		
		if(persistance.getOauth()==null || persistance.getOauth().equals("")) {
			String rawPassword=user.getPassword();
			String encPassword=encoder.encode(rawPassword);
			persistance.setPassword(encPassword);
			persistance.setEmail(user.getEmail());
		}
	}
	
	//회원찾기
	@Transactional(readOnly = true)
	public User userFind(String username) {
		User user=userRepository.findByUsername(username).orElseGet(()->{
			return new User();
		});
		return user;		
	}
}
