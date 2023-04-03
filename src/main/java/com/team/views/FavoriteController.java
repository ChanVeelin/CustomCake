package com.team.views;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;


import com.team.biz.dto.FavoriteVO;
import com.team.biz.dto.MemberVO;
import com.team.biz.service.FavoriteService;

@Controller
public class FavoriteController {
   
	@Autowired
	private FavoriteService favoriteService;
	
	@PostMapping("/favorite_insert")
	public String insertFavorite(FavoriteVO vo, HttpSession session) {
		MemberVO loginUser= (MemberVO)session.getAttribute("loginUser");
		
		if(loginUser==null) {
			return "member/login";
		}else {
			vo.setId(loginUser.getId());
			favoriteService.insertFavorite(vo);
			
			return "redirect:favorite_list";
		}
	}
	
	@GetMapping("/favorite_list")
	public String listFavorite(HttpSession session, Model model,FavoriteVO vo) {
		// 로그인 확인 
		MemberVO loginUser = (MemberVO)session.getAttribute("loginUser");
		
		if (loginUser == null) { // 로그인이 안된 경우
			return "member/login";
		} else {
			// Cart List 조회 후
			
			List<FavoriteVO>favoriteList = favoriteService.getListByFavorite(vo);
		    
			// "cartList" 속성에 조회한 데이터를 저장
			model.addAttribute("favoriteList", favoriteList);
			
			// cartList.jsp  화면 호출
			return "mypage/favoriteList";
		}
		
	}
}
