package com.app.dao;

import org.apache.ibatis.session.SqlSession;

import com.app.mybatis.config.MyBatisConfig;
import com.app.vo.CartVO;

public class CartDAO {
	public SqlSession sqlSession;
	
	public CartDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
//	상품 추가
	public void insertCart(CartVO cartVO) {
		sqlSession.insert("cart.insertCart", cartVO);
	}
	
}
