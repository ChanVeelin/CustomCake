package com.team.biz.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.team.biz.dto.FavoriteVO;

@Repository
public class FavoriteDAO {
    
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public void insertFavorite() {
		mybatis.insert("FavoriteMapper.insertFavorite");
	}
	
	public List<FavoriteVO> getListByFavorite(FavoriteVO vo){
	   
		return mybatis.selectList("FavoriteMapper.getListByFavorite",vo);
	}
	
	public void deleteByFavorite(FavoriteVO vo) {
		  mybatis.delete("FavoriteMapper.deleteByFavorite",vo);
	}
	
}
