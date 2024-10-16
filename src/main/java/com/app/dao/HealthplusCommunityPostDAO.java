package com.app.dao;

import org.apache.ibatis.session.SqlSession;

import com.app.mybatis.config.MyBatisConfig;

public class HealthplusCommunityPostDAO {
	public SqlSession sqlSession;
	
	public HealthplusCommunityPostDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
}
