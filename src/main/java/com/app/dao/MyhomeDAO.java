package com.app.dao;

import java.util.List;
import java.util.Optional;

import org.apache.ibatis.session.SqlSession;

import com.app.dto.PetDTO;
import com.app.mybatis.config.MyBatisConfig;
import com.app.vo.MemberVO;
import com.app.vo.PetVO;

public class MyhomeDAO {
public SqlSession sqlSession;
	
	public MyhomeDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
//	pet kinds
	public Optional<String> selectPetKinds() {
		return Optional.ofNullable("myhome.selectPetKinds");
	}
	
//	GET ALL PETS
	public List<PetVO> selectPetAll(Long memberId) {
		return sqlSession.selectList("myhome.selectPetAll", memberId);
	}
	
    // pet info insert
    public void insertPet(PetVO petVO) {
        sqlSession.insert("myhome.insertPet", petVO);
    }
    
    // pet update
    public void updatePet(PetVO petVO) {
        sqlSession.update("myhome.updatePet", petVO);
    }
    
    // pet delete
    public void deletePet(Long id) {
        sqlSession.delete("myhome.deletePet", id);
    }
    
    
    // pet info select by ID
    public Optional<PetVO> selectPetId(PetVO petVO) {
        return Optional.ofNullable(sqlSession.selectOne("myhome.selectPetId", petVO));
    }

	
    // 회원 비밀번호 수정
    public void updatePassword(MemberVO memberVO) {
    	sqlSession.update("myhome.updatePassword", memberVO);
    }
    
    
//	회원 조회
//	public MemberVO selectBuyerByEmail(String memberEmail) {
//	    return sqlSession.selectOne("member.selectBuyerByEmail", memberEmail);
//	}

//public Optional<MemberVO> selectBuyerByEmail(String memberEmail) {
//    return Optional.ofNullable(sqlSession.selectOne("member.selectBuyerByEmail", memberEmail));
//}
	
//	프로필 정보 수정
//	public void updateMember(MemberVO memberVO) {
//		sqlSession.update("myhome.updateMember", memberVO);
//	}
	
	
//	주문 제품 배송 상태
//	public List<OrderDTO> selectOrder(Long id) {
//		return sqlSession.selectList("order.selectOrder", id);
//	}
	
//	회원 탈퇴
//	public void deleteMember(Long memberid) {
//		sqlSession.delete("member.deleteMember", memberid);
//	}
	
//	쿠폰 조회
//	public Optional<AdminCouponDTO> selectCoupon(String adminCouponCode){
//		return Optional.ofNullable(sqlSession.selectOne("adminCoupon.selectCoupon", adminCouponCode));
//	}
}
	
	
