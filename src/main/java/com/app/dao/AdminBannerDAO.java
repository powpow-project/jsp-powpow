package com.app.dao;

import org.apache.ibatis.session.SqlSession;

import com.app.mybatis.config.MyBatisConfig;

public class AdminBannerDAO {
	public SqlSession sqlSession;
	
	public AdminBannerDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
}
