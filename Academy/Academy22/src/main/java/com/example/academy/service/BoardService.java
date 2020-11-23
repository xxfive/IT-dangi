package com.example.academy.service;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.academy.model.Board;
import com.example.academy.model.User;
import com.example.academy.repository.BoardRepository;
import com.example.academy.repository.UserRepository;

import lombok.RequiredArgsConstructor;

@Service
public class BoardService {
	
	@Autowired
	private BoardRepository boardRepository;
	
	@Transactional
	public void boardWrite(Board board) {
		boardRepository.save(board);
	}

	@Transactional(readOnly = true)
	public Page<Board> boardList(Pageable pageable) {
		return boardRepository.findAll(pageable);
	}

	@Transactional(readOnly = true)
	public Board boardDetail(int id) {
		return boardRepository.findById(id)
				.orElseThrow(()->{
					return new IllegalArgumentException("글 상세보기 실패");
				});
		
	}

	@Transactional
	public void boardDelete(int id) {
		 boardRepository.deleteById(id);
				
	}

	@Transactional
	public void boardUpdate(int id, Board requestBoard) {
		Board board=boardRepository.findById(id)
				.orElseThrow(()->{
					return new IllegalArgumentException("글 찾기 실패");
				});
		board.setTitle(requestBoard.getTitle());
		board.setContent(requestBoard.getContent());
		
	}

}
