package com.team.views;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.team.biz.dto.ProductVO;
import com.team.biz.service.CartService;
import com.team.biz.service.ProductService;

@Controller
public class MypageController {
	
	@Autowired
	private CartService cartService;
	
	@Autowired
	private ProductService productService;
	
	@GetMapping("/cart_write_form")
	public String cartWriteForm(Model model,ProductVO vo) {
		
		ProductVO product = productService.getProduct(vo);
		
		model.addAttribute("product",product);
		
		return "mypage/cartWrite";
		
	}
}
