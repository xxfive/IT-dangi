package com.cos.blog.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cos.blog.dto.ReplySaveRequestDto;
import com.cos.blog.model.Board;
import com.cos.blog.model.Reply;
import com.cos.blog.model.User;
import com.cos.blog.repository.BoardRepository;
import com.cos.blog.repository.ReplyRepository;
import com.cos.blog.repository.UserRepository;

@Service
public class BoardService {
	
	@Autowired
	private BoardRepository boardRepository;
	
	
	@Autowired
	private ReplyRepository replyRepository;
	
	
	@Transactional
	public void boardWrite(Board board, User user) {
		board.setCount(0);
		board.setUser(user);
		boardRepository.save(board);
	}
	
	@Transactional(readOnly = true)
	public Page<Board> boardList(Pageable pageable){
		return boardRepository.findAll(pageable);
	}

	@Transactional(readOnly = true)
	public Board boardDetail(int id) {
		return boardRepository.findById(id)
				.orElseThrow(()->{
					return new IllegalArgumentException("글 상세보기 실패 : 아이디를 찾을 수 없습니다.");
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
					return new IllegalArgumentException("글 찾기 실패 : 아이디를 찾을 수 없습니다.");
				});
		board.setTitle(requestBoard.getTitle());
		board.setContent(requestBoard.getContent());
		
	}

	@Transactional
	public void replyWrite(ReplySaveRequestDto replySaveRequestDto) {
		int reply=replyRepository.mSave(replySaveRequestDto.getUserId(), replySaveRequestDto.getBoardId(), 
				replySaveRequestDto.getContent());
	
	}

	@Transactional
	public void replyDelete(int replyId) {
		replyRepository.deleteById(replyId);
		
	}
}
