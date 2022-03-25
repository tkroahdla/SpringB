package kr.smhrd.mapper;

import java.util.ArrayList;

import kr.smhrd.domain.Board;

public interface BoardMapper {
	//전체 게시물 가지고오기
	public ArrayList<Board> boardList();
	
	//게시물 작성
	public void boardInsert(Board vo);
	
	//게시물 보기
	public Board boardContent(int idx);
	
	//게시물 수정
	public void boardUpdatePost(Board vo);
	
	//게시물 삭제
	public void boardDelete(int idx);
}
