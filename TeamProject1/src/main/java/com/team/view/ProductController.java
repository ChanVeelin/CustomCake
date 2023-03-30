package com.team.view;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.team.biz.dto.ProductVO;
import com.team.biz.service.CommentService;
import com.team.biz.service.ProductService;

@Controller
public class ProductController {

	@Autowired
	private ProductService productService;
	
	@Autowired
	private CommentService commentService;
	@RequestMapping(value="/product_detail", method=RequestMethod.GET)
	public String productDetailAction(ProductVO vo, Model model){
		
		ProductVO product=productService.getProduct(vo);
		double avg=commentService.getAvgCommentScore(vo.getProduct_no());
		model.addAttribute("productVO", product);
		model.addAttribute("avg", avg);
		return "product/productDetail";
	}
	
//	@GetMapping("/category")
//	public String productKindAction(ProductVO vo, Model model) {
//		 List<ProductVO> kindList=productService.getProductListByKind(vo.getKind());
//		 model.addAttribute("productKindList",kindList);
//		 return "product/productKind";
//	}
}
