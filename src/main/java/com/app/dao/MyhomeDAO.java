package com.app.dao;

import java.util.List;
import java.util.Optional;

import org.apache.ibatis.session.SqlSession;

import com.app.dto.AdminCouponDTO;
import com.app.dto.OrderDTO;
import com.app.mybatis.config.MyBatisConfig;
import com.app.vo.MemberVO;

public class MyhomeDAO {
public SqlSession sqlSession;
	
	public MyhomeDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
		
	}
	
//	회원 조회
//	public MemberVO selectBuyerByEmail(String memberEmail) {
//	    return sqlSession.selectOne("member.selectBuyerByEmail", memberEmail);
//	}

public Optional<MemberVO> selectBuyerByEmail(String memberEmail) {
    return Optional.ofNullable(sqlSession.selectOne("member.selectBuyerByEmail", memberEmail));
}
	
//	프로필 정보 수정
	public void updateMember(MemberVO memberVO) {
		sqlSession.update("member.updateMember", memberVO);
	}
	
	// 비밀번호 수정
	public void updatePassword(MemberVO memberVO) {
	    sqlSession.update("member.updatePassword", memberVO);
	}
	
//	주문 제품 배송 상태
	public List<OrderDTO> selectOrder(Long id) {
		return sqlSession.selectList("order.selectOrder", id);
	}
	
//	회원 탈퇴
	public void deleteMember(Long memberid) {
		sqlSession.delete("member.deleteMember", memberid);
	}
	
//	쿠폰 조회
	public Optional<AdminCouponDTO> selectCoupon(String adminCouponCode){
		return Optional.ofNullable(sqlSession.selectOne("adminCoupon.selectCoupon", adminCouponCode));
	}
}
