package com.app.dao;

import org.apache.ibatis.session.SqlSession;
import com.app.mybatis.config.MyBatisConfig;
import com.app.vo.AdminVO;
import com.app.vo.AdminNoticeVO;

import java.util.List;
import java.util.Optional;

public class AdminDAO {
    private SqlSession sqlSession;

    public AdminDAO() {
        sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
    }

	//	로그인
    public Optional<String> select(AdminVO adminVO) {
        String result = sqlSession.selectOne("admin.loginAdmin", adminVO);
        return Optional.ofNullable(result);
    }

    // 전체 조회
    public List<AdminVO> selectAll() {
        return sqlSession.selectList("admin.selectAllAdminNotices");
    }

//    // 공지사항 단건 조회
//    public AdminNoticeVO selectOneAdminNotice(Long id) {
//        return sqlSession.selectOne("admin.selectOneAdminNotice", id);
//    }

    // 공지사항 추가
    public void insertAdminNotice(AdminNoticeVO noticeVO) {
        sqlSession.insert("admin.insertAdminNotice", noticeVO);
    }

    // 공지사항 수정
    public void updateAdminNotice(AdminNoticeVO noticeVO) {
        sqlSession.update("admin.updateAdminNotice", noticeVO);
    }

    // 공지사항 삭제
    public void deleteAdminNotice(Long id) {
        sqlSession.delete("admin.deleteAdminNotice", id);
    
	}
}

