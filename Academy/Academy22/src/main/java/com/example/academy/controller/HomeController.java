package com.example.academy.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.academy.model.User;
import com.example.academy.service.UserService;



@Controller
public class HomeController {
	@Autowired
	private UserService userService;
	@GetMapping({"","/"})
	public String index() {
		return "home";
	}
	
	@GetMapping("map")
	public String map() {
		return "map";
	}
	
	@GetMapping("introduce")
	public String introduce() {
		return "introduce";
	}
	
	@GetMapping("course")
	public String course() {
		return "course";
	}
	
	@GetMapping("send")
	public String send() {
		return "send";
	}
	
}
