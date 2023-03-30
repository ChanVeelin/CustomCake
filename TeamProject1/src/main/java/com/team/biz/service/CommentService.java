package com.team.biz.service;

import java.util.List;

import com.team.biz.dto.ProductCommentVO;

import utils.Criteria;

public interface CommentService {

	int saveComment(ProductCommentVO vo); 
	
	double getAvgCommentScore(int product_no);
	
	int getCountCommentList(int product_no);

	List<ProductCommentVO> getCommentListWithPaging(Criteria criteria, int product_no);

}