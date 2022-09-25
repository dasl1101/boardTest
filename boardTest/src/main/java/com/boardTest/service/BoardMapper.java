package com.boardTest.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.boardTest.dto.BoardDTO;

@Service
public class BoardMapper {
	@Autowired
	private SqlSession sqlSession;
	
	public List<BoardDTO> listBoard(){
		List<BoardDTO> list = sqlSession.selectList("listBoard");
		return list;
	}
}
