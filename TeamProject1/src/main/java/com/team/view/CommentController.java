package com.team.view;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.team.biz.dto.MemberVO;
import com.team.biz.dto.CommentVO;
import com.team.biz.service.CommentService;

import utils.Criteria;
import utils.PageMaker;

@RestController
@RequestMapping("/comments")
public class CommentController {
	@Autowired
	private CommentService commentService;
	
	@GetMapping(value="/list", produces="application/json; charset=UTF-8")
	public Map<String, Object> commentList(CommentVO vo, Criteria criteria) {
		Map<String, Object> commentInfo = new HashMap<>();
		// 상품 댓글 목록 조회
		List<CommentVO> commentList 
				= commentService.getCommentListWithPaging(criteria, vo.getProduct_no());
		// 페이지 정보 작성
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCriteria(criteria);
		pageMaker.setTotalCount(commentService.getCountCommentList(vo.getProduct_no()));
		commentInfo.put("total", commentList.size());
		commentInfo.put("commentList", commentList);
		commentInfo.put("pageInfo", pageMaker);
		return commentInfo;
	}
	@RequestMapping("/product_detail")
	public String avgCommentScore(CommentVO vo, Model model , Criteria criteria) {
		double avg=commentService.getAvgCommentScore(vo.getProduct_no());
		model.addAttribute("productCommentVO",commentService.getCommentListWithPaging(criteria, vo.getProduct_no()) );
		model.addAttribute("avg", avg);
		return "product/productDetail";
	}
	
	@PostMapping(value="/save")
	public String saveCommentAction(CommentVO commentVO, HttpSession session) {
		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
		if (loginUser == null) {
			return "not_logedin";
		} else {
			commentVO.setId(loginUser.getId());	// 사용자 ID 저장
			// 상품평 저장
			if (commentService.saveComment(commentVO) > 0) {
				return "success";
			} else {
				return "fail";
			}
		}
	}
	
	
}
