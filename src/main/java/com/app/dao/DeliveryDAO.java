package com.app.dao;

import org.apache.ibatis.session.SqlSession;

import com.app.mybatis.config.MyBatisConfig;

public class DeliveryDAO {
	public SqlSession sqlSession;
	
	public DeliveryDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
}
