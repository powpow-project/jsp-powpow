package com.app.dao;

import org.apache.ibatis.session.SqlSession;

import com.app.mybatis.config.MyBatisConfig;
import com.app.vo.SellerVO;

public class SellerDAO {
	public SqlSession sqlSession;
	
	public SellerDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public SellerVO selectBySellerEmail(String sellerEmail) {
		return sqlSession.selectOne("seller.selectBySellerEmail", sellerEmail);
	}
}
