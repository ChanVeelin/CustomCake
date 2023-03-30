package com.team.biz.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team.biz.dao.CommentDAO;
import com.team.biz.dto.ProductCommentVO;

import utils.Criteria;

@Service("commentService")
public class CommentServiceImpl implements CommentService {

	@Autowired
	private CommentDAO cDao;
	
	@Override
	public int getCountCommentList(int product_no) {
		return cDao.countCommentList(product_no);
	}

	@Override
	public List<ProductCommentVO> getCommentListWithPaging(Criteria criteria, int product_no) {
		return cDao.commentListWithPaging(criteria, product_no);
	}

	@Override
	public int saveComment(ProductCommentVO vo) {
		return cDao.saveComment(vo);
	}

	@Override
	public double getAvgCommentScore(int product_no) {
		return cDao.avgCommentScore(product_no);
	}

}
