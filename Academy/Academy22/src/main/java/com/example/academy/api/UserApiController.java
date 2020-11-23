package com.example.academy.api;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.example.academy.dto.ResponseDto;
import com.example.academy.model.User;
import com.example.academy.service.UserService;

@RestController
public class UserApiController {
	
	@Autowired
	private UserService userService;
	
	
//	@PostMapping("/api/user")
//	public ResponseDto<Integer> save(@RequestBody User user) {
//		System.out.println("save 호출됨");
//		return new ResponseDto<Integer>(HttpStatus.OK.value(), 1);
//	}
	
	@PostMapping("/api/user")
	public int join(@RequestBody User user) {
		userService.join(user);
		return 1;
	}
	
	@PostMapping("/api/user/login")
	public int login(@RequestBody User user, HttpSession session) {
		User principal=userService.login(user);
		
		if(principal !=null) {
			session.setAttribute("principal", principal);
		}
		return 1;
	}
	
	@PutMapping("/user")
	public int update(@RequestBody User user, String password, String email, String phone) {
		userService.userUpdate(user, password, email, phone);
		return 1;
	}
	

}
