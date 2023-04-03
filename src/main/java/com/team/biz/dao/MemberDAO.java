package com.team.biz.dao;



import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.team.biz.dto.MemberVO;

@Repository("memberDAO")
public class MemberDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	//회원 상세정보 조회
	public MemberVO getMember(String id) {
		return mybatis.selectOne("MemberMapper.getMember",id);
	}
	//회원 id 존재여부 확인
	public int confirmID(String userid) {
		String pwd=mybatis.selectOne("MemberMapper.confirmID",userid);
		if(pwd!=null) return 1;
		else return 0;
	}
	
	//회원 로그인 확인
	public int loginID(MemberVO vo) {
		int result=-1;
		String pwd=mybatis.selectOne("MemberMapper.confirmID", vo);
		if(pwd==null) {
			result=-1;
		}else if(pwd.equals(vo.getPwd())) {
			result=1;
		}else {
			result=0;
		}
		return result;
	}
	
	//회원 추가

	

	
	//이름, 이메일으로 아이디찾기

}
