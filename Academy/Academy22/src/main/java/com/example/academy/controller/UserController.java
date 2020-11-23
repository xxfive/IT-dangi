package com.example.academy.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.academy.model.User;
import com.example.academy.service.UserService;



@Controller
public class UserController {
	
	@GetMapping("/user/join")
	public String join() {
		return "user/join";
	}

	@GetMapping("/user/login")
	public String login() {
		return "user/login";
	}
	
	@GetMapping("/user/updateForm")
	public String updateForm() {
		return "user/updateForm";
	}
	
	
}
