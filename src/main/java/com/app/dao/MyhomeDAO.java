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
	
//	동물 종류
	public Optional<String> selectPetKinds() {
		return Optional.ofNullable("myhome.selectPetKinds");
	}
	
//	추가한 모든 동물
	public List<PetVO> selectPetAll(Long memberId) {
		return sqlSession.selectList("myhome.selectPetAll", memberId);
	}
	
    // 동물 정보 추가
    public void insertPet(PetVO petVO) {
        sqlSession.insert("myhome.insertPet", petVO);
    }
    
    // 동물 정보 업데이트
    public void updatePet(PetVO petVO) {
        sqlSession.update("myhome.updatePet", petVO);
    }
    
    // 동물 삭제
    public void deletePet(Long id) {
        sqlSession.delete("myhome.deletePet", id);
    }
    
    
    // 동물 ID 로 찾기
    public Optional<PetVO> selectPetId(PetVO petVO) {
        return Optional.ofNullable(sqlSession.selectOne("myhome.selectPetId", petVO));
    }

	
    // 회원 비밀번호 수정
    public void updatePassword(MemberVO memberVO) {
    	sqlSession.update("myhome.updatePassword", memberVO);
    }
}
	
