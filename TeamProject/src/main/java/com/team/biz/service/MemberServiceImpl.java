package com.team.biz.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team.biz.dao.MemberDAO;
import com.team.biz.dto.MemberVO;

@Service("memberService")
public class MemberServiceImpl implements MemberService {
	@Autowired
	private MemberDAO mDao;
	
	@Override
	public MemberVO getMember(String id) {
		return mDao.getMember(id);
	}

	@Override
	public int confirmID(String userid) {
		return mDao.confirmID(userid);
	}
	
	@Override
	public int loginID(MemberVO vo) {
		return mDao.loginID(vo);
	}

	@Override
	public void insertMember(MemberVO memberVO) {
		mDao.insertMember(memberVO);
		
	}

	@Override
	public String selectIdByNameEmail(MemberVO vo) {
		return mDao.selectIdByNameEmail(vo);
	}

	@Override
	public String selectPwdByIdNameEmail(MemberVO vo) {
		return mDao.selectPwdByIdNameEmail(vo);
	}


}
