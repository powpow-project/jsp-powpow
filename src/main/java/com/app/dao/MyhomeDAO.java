package com.app.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.app.dto.OrderDTO;
import com.app.mybatis.config.MyBatisConfig;
import com.app.vo.MemberVO;

public class MyhomeDAO {
public SqlSession sqlSession;
	
	public MyhomeDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
		
	}
//	프로필 이미지 넣기
	public void insert(MemberVO memberVO) {
		sqlSession.insert("member.insert", memberVO);
	}
	// 주문 제품 배송 상태
		public List<OrderDTO> select(Long memberId) {
			return sqlSession.selectList("order.select", memberId);
		}
}
