package com.team.biz.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team.biz.dao.ProductDAO;
import com.team.biz.dto.ProductVO;

@Service
public class ProductServiceImpl implements ProductService{
	
	@Autowired
	private ProductDAO pDao;
	
	@Override
	public List<ProductVO> getProductList() {
		return pDao.getProductList();
	}

	@Override
	public ProductVO getProduct(ProductVO vo) {
		return pDao.getProduct(vo);
	}

}
