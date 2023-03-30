package com.team.view;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.team.biz.dto.MemberVO;
import com.team.biz.service.MemberService;



@Controller
@SessionAttributes("loginUser")
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	//

	
	//id 중복체크 화면 표시
	@GetMapping(value="/id_check_form")
	public String idCheckView(MemberVO vo, Model model) {
		int result=memberService.confirmID(vo.getId());
		model.addAttribute("id", vo.getId());
		model.addAttribute("message", result);
		return "member/idcheck";
	}
	
	//
	@PostMapping("/id_check_form")
	public String idCheckAction(MemberVO vo, Model model) {
		int result=memberService.confirmID(vo.getId());
		model.addAttribute("id", vo.getId());
		model.addAttribute("message", result);
		return "member/idcheck";
	}
	

	


	
	@GetMapping("/login_form")
	public String loginView() {
		return "member/login";
	}
	
	@PostMapping("/login")
	public String loginAction(MemberVO vo, Model model) {
		int result=memberService.loginID(vo);
		if(result==1) {//로그인 성공
			model.addAttribute("loginUser", memberService.getMember(vo.getId()));
			return "redirect:index";
		}else {
			return "member/login_fail";
		}
	}
	


	
	
}
