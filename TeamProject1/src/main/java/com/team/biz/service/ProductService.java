package com.team.biz.service;

import java.util.List;

import com.team.biz.dto.ProductVO;

public interface ProductService {
	
	List<ProductVO> getProductList();
	
	ProductVO getProduct(ProductVO vo);

}
