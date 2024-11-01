package com.app.dao;

import org.apache.ibatis.session.SqlSession;

import com.app.mybatis.config.MyBatisConfig;
import com.app.vo.CommCommentVO;
import com.app.vo.CommPostVO;

public class CommunityDAO {
	public SqlSession sqlSession;
	
	public CommunityDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	// 게시글 추가
	public void insert(CommPostVO commPostVO) {
		
	}
	
	// 댓글 추가
	public void insertComment(CommCommentVO commCommentVO) {
		sqlSession.insert("community.insert", commCommentVO);
	}
	
	//댓글 삭제
	public void deleteComment(Long id) {
		sqlSession.delete("community.delete", id);
	}
	
	
	
	
	
}
