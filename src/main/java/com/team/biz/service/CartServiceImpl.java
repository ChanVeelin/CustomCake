package com.team.biz.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team.biz.dao.CartDAO;
import com.team.biz.dto.CartVO;

@Service("cartService")
public class CartServiceImpl implements CartService {

	@Autowired
	private CartDAO cartDAO;
	
	@Override
	public List<CartVO> cartList(String id) {
		
		return cartDAO.cartList(id);
	}

	@Override
	public void insertCart(CartVO vo) {
		
		cartDAO.insertCart(vo);
	}

	@Override
	public void deleteCart(int cart_no) {
		
		cartDAO.deleteCart(cart_no);
	}

	@Override
	public void updateCart(int cart_no) {
		
		cartDAO.updateCart(cart_no);
	}

}
