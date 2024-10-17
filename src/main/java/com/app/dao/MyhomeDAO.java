package com.app.dao;

import org.apache.ibatis.session.SqlSession;

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
}
