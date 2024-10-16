package com.app.dao;

import org.apache.ibatis.session.SqlSession;

import com.app.mybatis.config.MyBatisConfig;

public class HealthplusCommunityEventDAO {

	public SqlSession sqlSession;

	public HealthplusCommunityEventDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
}
