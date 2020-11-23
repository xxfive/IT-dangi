package com.example.academy.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.academy.model.Board;




public interface BoardRepository extends JpaRepository<Board, Integer>{


	
}
