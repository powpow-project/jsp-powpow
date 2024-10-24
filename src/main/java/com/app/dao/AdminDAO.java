package com.app.dao;

import org.apache.ibatis.session.SqlSession;

import com.app.dto.AdminNoticeDTO;
import com.app.mybatis.config.MyBatisConfig;
import com.app.vo.AdminVO;

import java.util.List;
import java.util.Optional;

public class AdminDAO {
    private SqlSession sqlSession;

    public AdminDAO() {
        sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
    }

    // 로그인
    public String select(AdminVO adminVO) {
        return sqlSession.selectOne("admin.loginAdmin", adminVO);
    }

    // 어드민 이메일로 조회
    public AdminVO selectByAdminEmail(String adminEmail) {
        return sqlSession.selectOne("admin.selectByAdminEmail", adminEmail);
    }
    
    // 공지사항 추가
    public void insertAdminNotice(AdminNoticeDTO adminNoticeDTO) {
    	sqlSession.insert("admin.insertAdminNotice", adminNoticeDTO);
    }

    // 전체 공지사항 조회
    public List<AdminNoticeDTO> selectAll() {
        return sqlSession.selectList("admin.selectAllAdminNotices");
    }

    // 공지사항 게시글 상세보기 조회(updateController)
    public Optional<AdminNoticeDTO> selectAdminNotice(Long id) {
    	return Optional.ofNullable(sqlSession.selectOne("admin.selectAdminNotice", id));
    }   

    // 공지사항 수정
    public void updateAdminNotice(AdminNoticeDTO adminNoticeDTO) {
        sqlSession.update("admin.updateAdminNotice", adminNoticeDTO);
    }

    // 공지사항 삭제
    public void deleteAdminNotice(Long id) {
        sqlSession.delete("admin.deleteAdminNotice", id);
    }
}
