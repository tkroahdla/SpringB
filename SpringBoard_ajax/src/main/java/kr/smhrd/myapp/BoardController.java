package kr.smhrd.myapp;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.smhrd.domain.Board;
import kr.smhrd.mapper.BoardMapper;

@Controller
public class BoardController {

	//의존성 주입을 해주는 ..
	@Autowired
	private BoardMapper mapper;
	
	@RequestMapping("/")
	public String main() {
		return "boardList";
	}
	
	@RequestMapping("/boardList.do")
	public @ResponseBody ArrayList<Board> boardList(){
		ArrayList<Board> list = mapper.boardList();
		return list;
	}
	
	@RequestMapping("/boardInsert.do")
	public @ResponseBody void boardInsert(Board vo) {
		mapper.boardInsert(vo);
	}
	
	@RequestMapping("/boardDelete.do")
	public @ResponseBody void boardDelete(int idx) {
		mapper.boardDelete(idx);
	}
	

	
	
}
