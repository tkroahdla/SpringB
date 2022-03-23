package kr.smhrd.myapp;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.smhrd.domain.Board;
import kr.smhrd.mapper.BoardMapper;

@Controller
public class BoardController {

	//의존성 주입을 해주는 ..
	@Autowired
	private BoardMapper mapper;
	
	
	
	

	
	
}
