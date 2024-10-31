package com.app.dao;


import javax.servlet.http.HttpSession;

import java.util.List;
import java.util.Optional;


import org.apache.ibatis.session.SqlSession;

import com.app.dto.AdminNoticeDTO;
import com.app.mybatis.config.MyBatisConfig;
import com.app.vo.BusinessVO;
import com.app.vo.MemberVO;

import com.app.vo.SellerVO;



public class MemberDAO {
	public SqlSession sqlSession;
	
	public MemberDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}

	
//	구매자 회원가입
	public void insertBuyer(MemberVO memberVO) {
		sqlSession.insert("member.insertBuyer", memberVO);
	}
		
	
//	구매자 로그인
	public String selectBuyer(MemberVO memberVO) {
		return sqlSession.selectOne("member.selectBuyer", memberVO);
	}

//	구매자 계정 삭제
	public void deleteBuyer(Long id) {
		sqlSession.delete("member.deleteBuyer", id);
	}
	
// 구매자 정보 수정
	public void updateBuyer(MemberVO memberVO) {
		sqlSession.update("member.updateBuyer", memberVO);
	}	
	
// 로그아웃
	public void logout(HttpSession session) {
		if (session != null) {
			session.invalidate(); 
		}
	}
	
//	판매자 회원가입
	public void insertSeller(SellerVO sellerVO) {
		sqlSession.insert("member.insertSeller", sellerVO);
	}
	
////	판매자 비즈니스 정보 추가
//	public void insertBusiness(BusinessVO businessVO) {
//	    sqlSession.insert("member.insertBusiness", businessVO);
//	}
	
//	판매자 로그인
	public String selectSeller(SellerVO sellerVO) {
		return sqlSession.selectOne("member.selectSeller", sellerVO);
	}

	
// 판매자 정보 수정
	public void updateSeller(SellerVO sellerVO) {
		sqlSession.update("member.updateSeller", sellerVO);
	}	
	
	
//	판매자 계정 삭제
	public void deleteSeller(Long id) {
		sqlSession.delete("member.deleteSeller", id);
	}

	
	

//	특정 멤버 정보 조회
	public Optional<MemberVO> select(Long id) {
		return Optional.ofNullable(sqlSession.selectOne("member.select", id));
	}


	// 진아 >>> 일반회원 전체 조회
	public List<MemberVO> selectAllMembers() {
	    return sqlSession.selectList("member.selectAllMembers");
	}
	
}

