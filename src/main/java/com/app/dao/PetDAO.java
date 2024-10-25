package com.app.dao;

import java.util.List;
import java.util.Optional;

import org.apache.ibatis.session.SqlSession;

import com.app.mybatis.config.MyBatisConfig;
import com.app.vo.PetVO;

public class PetDAO {
	public SqlSession sqlSession;
	
	public PetDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
//	pet kinds
	public List<String> selectPetKinds() {
		return sqlSession.selectList("pet.selectPetKinds");
	}
	
    // pet info insert
    public void insertPet(PetVO petVO) {
        sqlSession.insert("pet.insertPet", petVO);
    }
    
    // pet update
    public void updatePet(PetVO petVO) {
        sqlSession.update("pet.updatePet", petVO);
    }
    
    // pet delete
    public void deletePet(Long id) {
        sqlSession.delete("pet.deletePet", id);
    }
    
    
    // pet info select by ID
    public Optional<PetVO> selectPetId(Long id) {
        return Optional.ofNullable(sqlSession.selectOne("pet.selectPetId", id));
    }
}
