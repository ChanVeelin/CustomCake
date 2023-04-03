package com.team.biz.service;

import java.util.List;

import com.team.biz.dto.CommentVO;

import utils.Criteria;

public interface CommentService {

	int saveComment(CommentVO vo); 
	
	double getAvgCommentScore(int product_no);
	
	int getCountCommentList(int product_no);

	List<CommentVO> getCommentListWithPaging(Criteria criteria, int product_no);

}