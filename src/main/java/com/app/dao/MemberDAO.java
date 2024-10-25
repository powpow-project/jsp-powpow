package com.app.dao;

import java.util.Optional;

import org.apache.ibatis.session.SqlSession;

import com.app.mybatis.config.MyBatisConfig;
import com.app.vo.MemberVO;

public class MemberDAO {
	public SqlSession sqlSession;
	
	public MemberDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
//	특정 멤버 정보 조회
	public Optional<MemberVO> select(Long id) {
		return Optional.ofNullable(sqlSession.selectOne("member.select", id));
	}
	
}

