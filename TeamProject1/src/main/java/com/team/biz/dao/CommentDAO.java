package com.team.biz.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.team.biz.dto.ProductCommentVO;

import utils.Criteria;

@Repository
public class CommentDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public int saveComment(ProductCommentVO vo) {
		return mybatis.insert("CommentMapper.saveComment", vo);
	}
	
	public double avgCommentScore(int product_no) {
		return mybatis.selectOne("CommentMapper.avgCommentScore", product_no);
	}
	
	public int countCommentList(int product_no) {
		return mybatis.selectOne("CommentMapper.countCommentList", product_no);
	}
	
	public List<ProductCommentVO> commentListWithPaging(Criteria criteria, int product_no) {
		HashMap<String, Object> map = new HashMap<>();
		map.put("criteria", criteria);
		map.put("product_no", product_no);
		return mybatis.selectList("CommentMapper.commentListWithPaging", map);
	}
	
	
}
