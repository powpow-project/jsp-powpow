package com.app.dao;

import org.apache.ibatis.session.SqlSession;

import com.app.mybatis.config.MyBatisConfig;
import com.app.vo.LikeVO;

public class LikeDAO {
	public SqlSession sqlSession;
	
	public LikeDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public void insertProductLike(LikeVO likeVO) {
		sqlSession.insert("like.insertProductLike", likeVO);
	}
}
