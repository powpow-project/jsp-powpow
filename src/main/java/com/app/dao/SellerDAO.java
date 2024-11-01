package com.app.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.app.dto.SellerDTO;
import com.app.mybatis.config.MyBatisConfig;
import com.app.vo.MemberVO;
import com.app.vo.SellerVO;

public class SellerDAO {
	public SqlSession sqlSession;
	
	public SellerDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public SellerVO selectBySellerEmail(String sellerEmail) {
		return sqlSession.selectOne("seller.selectBySellerEmail", sellerEmail);
	}
	
	// 진아 >>> 판매자회원 전체 조회
	public List<SellerDTO> selectAllSellers() {
	    return sqlSession.selectList("seller.selectAllSellers");
	}
}
