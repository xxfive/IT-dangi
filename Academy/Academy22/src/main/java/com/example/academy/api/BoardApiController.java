package com.example.academy.api;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.example.academy.dto.ResponseDto;
import com.example.academy.model.Board;
import com.example.academy.model.User;
import com.example.academy.service.BoardService;
import com.fasterxml.jackson.annotation.JsonAutoDetect;



@RestController
public class BoardApiController {
	
	@Autowired
	private BoardService boardService;
	
	@PostMapping("/api/board")
	public int save(@RequestBody Board board) {
		boardService.boardWrite(board);
		return 1;
	}
	
	
	@DeleteMapping("/api/board/{id}")
	public int deleteById(@PathVariable int id){
		boardService.boardDelete(id);
		return 1;
	}
	
	@PutMapping("/api/board/{id}")
	public int update(@PathVariable int id, @RequestBody Board board) {
		boardService.boardUpdate(id,board);
		return 1;
	}
	

}
