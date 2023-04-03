package com.team.biz;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.team.biz.dto.ProductVO;
import com.team.biz.service.ProductService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	private ProductService productService;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String home(Model model) {
		// 신상품 조회
		List<ProductVO> newProductList = productService.getProductList();
		
		// 베스트 상품 조회
		//List<ProductVO> bestProductList = productService.getBestProductList();
		
		model.addAttribute("newProductList", newProductList);
	
		return "index";
	}
	
}
