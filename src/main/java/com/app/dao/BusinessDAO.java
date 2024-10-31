package com.app.dao;

import org.apache.ibatis.session.SqlSession;

import com.app.mybatis.config.MyBatisConfig;
import com.app.vo.BusinessVO;

public class BusinessDAO {
	public SqlSession sqlSession;
	
	public BusinessDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
//	구매자 회원가입
	public void insertBusiness(BusinessVO businessVO) {
		sqlSession.insert("business.insertBusiness", businessVO);
	}
	
	public BusinessVO selectBusinessById(String businessNumber) {
		return sqlSession.selectOne("business.selectBusinessById", businessNumber);
	}
	
	
	
}
