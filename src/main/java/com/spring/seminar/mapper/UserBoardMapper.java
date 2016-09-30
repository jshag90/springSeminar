package com.spring.seminar.mapper;

import java.util.ArrayList;

import com.spring.seminar.dto.Board;

public interface UserBoardMapper {
	/////////////////// ����� �Խ��� ////////////////////////
	public void userBoardWrite(Board board);

	public ArrayList<Board> userBoardList();

	public Board userBoardViewbybId(long bId);

	public void userBoardModifybyBId(Board board);

	public void userBoardDelete(long bId);

	public void userBoardHitCount(long bId);

}