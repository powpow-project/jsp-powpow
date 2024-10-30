package com.app.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.app.dto.OrderDTO;
import com.app.mybatis.config.MyBatisConfig;
import com.app.vo.CancleProductVO;

public class CancleProductDAO {
	public SqlSession sqlSession;

	public CancleProductDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public void insert(CancleProductVO cancleProductVO) {
		sqlSession.insert("cancleProduct.insert", cancleProductVO);
	}
	
//	날짜별 취소주문 총내역
	public List<OrderDTO> selectByDate(Long sellerId){
	    return sqlSession.selectList("cancleProduct.selectByDate", sellerId);
	}
	
}
