package com.app.admin.controller;

import com.app.Result;
import com.app.vo.AdminNoticeVO;
import com.app.dao.AdminDAO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Date;

public class AdminWriteOkController {
    public Result execute(HttpServletRequest req, HttpServletResponse resp) {
        
        AdminDAO adminDAO = new AdminDAO();
        AdminNoticeVO adminNoticeVO = new AdminNoticeVO();
        Result result = new Result();
        
        // 파라미터 유효성 검사 (null 또는 빈 문자열 체크)
        String adminIdParam = req.getParameter("adminId");
        String adminNoticeNumberParam = req.getParameter("adminNoticeNumber");
        String adminNoticeTitle = req.getParameter("adminNoticeTitle");
        String adminNoticeContent = req.getParameter("adminNoticeContent");
        String adminNoticeView = req.getParameter("adminNoticeView");
        String adminNoticeWriter = req.getParameter("adminNoticeWriter");
        
        // 파라미터 값이 null이거나 빈 문자열일 경우
        if (adminIdParam == null || adminIdParam.isEmpty() ||
            adminNoticeNumberParam == null || adminNoticeNumberParam.isEmpty() ||
            adminNoticeTitle == null || adminNoticeTitle.isEmpty() ||
            adminNoticeContent == null || adminNoticeContent.isEmpty() ||
            adminNoticeView == null || adminNoticeView.isEmpty() ||
            adminNoticeWriter == null || adminNoticeWriter.isEmpty()) {
            
            // 에러 처리: 모든 필드가 필요한 경우 처리하지 않고 공지사항 목록으로 이동
            result.setRedirect(true);
            result.setPath("../admin/announcementList.admin");  // 변경된 경로
            return result;
        }

        // 문자열을 long 타입으로 변환할 때 예외 처리 추가
        Long adminId = null;
        int adminNoticeNumber = 0;

        try {
            adminId = Long.parseLong(adminIdParam);
            adminNoticeNumber = Integer.parseInt(adminNoticeNumberParam);
        } catch (NumberFormatException e) {
            // 변환 실패 시 공지사항 목록으로 리다이렉트
            result.setRedirect(true);
            result.setPath("../admin/announcementList.admin");  // 변경된 경로
            return result;
        }
        
        Date adminNoticeDate = new Date(System.currentTimeMillis());
        
        // VO에 값 설정
        adminNoticeVO.setAdminId(adminId);
        adminNoticeVO.setAdminNoticeNumber(adminNoticeNumber);
        adminNoticeVO.setAdminNoticeTitle(adminNoticeTitle);
        adminNoticeVO.setAdminNoticeContent(adminNoticeContent);
        adminNoticeVO.setAdminNoticeView(adminNoticeView);
        adminNoticeVO.setAdminNoticeWriter(adminNoticeWriter);
        adminNoticeVO.setAdminNoticeDate(adminNoticeDate);
        
        // DAO를 통해 공지사항 추가
        adminDAO.insertAdminNotice(adminNoticeVO);
        
        // 공지사항 목록 페이지로 리다이렉트
        result.setRedirect(true);
        result.setPath("../admin/announcementList.admin");
        
        return result;
    }
}
