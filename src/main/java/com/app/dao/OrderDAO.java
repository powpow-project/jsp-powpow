package com.app.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.app.dto.OrderDTO;
import com.app.mybatis.config.MyBatisConfig;
import com.app.vo.OrderVO;

public class OrderDAO {
	public SqlSession sqlSession;
	
	public OrderDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
//	상품 주문
	public void insert(OrderVO orderVO) {
		sqlSession.insert("order.insert", orderVO);
	}
	
//	주문 내역
	public List<OrderDTO> select(Long memberId) {
		return sqlSession.selectList("order.select", memberId);
	}
	
//	주문 수량 조회
	public int selectById(Long id) {
		return sqlSession.selectOne("order.selectById", id);
	}
	
//	주문 삭제
	public void delete(Long id) {
		sqlSession.delete("order.delete", id);
	}

	
}

	
