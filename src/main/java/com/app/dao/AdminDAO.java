package com.app.dao;

import org.apache.ibatis.session.SqlSession;

import com.app.dto.AdminBannerDTO;
import com.app.dto.AdminCouponDTO;
import com.app.dto.AdminNoticeDTO;
import com.app.mybatis.config.MyBatisConfig;
import com.app.vo.AdminBannerVO;
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

    // 배너 추가
    public void insertAdminBanner(AdminBannerDTO adminBannerDTO) {
        sqlSession.insert("admin.insertAdminBanner", adminBannerDTO);
    }

    // 전체 배너 조회
    public List<AdminBannerDTO> selectAllBanners() {
        return sqlSession.selectList("admin.selectAllAdminBanners");
    }

    // 배너 상세 조회
    public Optional<AdminBannerDTO> selectAdminBanner(Long id) {
        return Optional.ofNullable(sqlSession.selectOne("admin.selectAdminBanner", id));
    }

    // 배너 수정
    public void updateAdminBanner(AdminBannerDTO adminBannerDTO) {
        sqlSession.update("admin.updateAdminBanner", adminBannerDTO);
    }

    // 배너 삭제
    public void deleteAdminBanner(Long id) {
        sqlSession.delete("admin.deleteAdminBanner", id);
    }
    
    // 전체 쿠폰 조회
    public List<AdminCouponDTO> selectAllCoupons() {
        return sqlSession.selectList("admin.selectAllAdminCoupons");
    }
    
    // 쿠폰 추가
    public void insertAdminCoupon(AdminCouponDTO adminCouponDTO) {
        sqlSession.insert("admin.insertAdminCoupon", adminCouponDTO);
    }

    // 쿠폰 상세 조회
    public Optional<AdminCouponDTO> selectAdminCoupon(Long id) {
        return Optional.ofNullable(sqlSession.selectOne("admin.selectCouponById", id));
    }

    // 쿠폰 수정
    public void updateAdminCoupon(AdminCouponDTO adminCouponDTO) {
        sqlSession.update("admin.updateAdminCouponById", adminCouponDTO); 
    }

    // 쿠폰 삭제
    public void deleteAdminCoupon(Long id) {
        sqlSession.delete("admin.deleteCouponById", id);
    }
    
    // 쿠폰 코드 중복 체크
    public boolean checkCouponCodeExists(String couponCode) {
        Integer count = sqlSession.selectOne("admin.checkCouponCodeExists", couponCode);
        return count != null && count > 0; // 존재하는 경우 true 반환
    }
}
