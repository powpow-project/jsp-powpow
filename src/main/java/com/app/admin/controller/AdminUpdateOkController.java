package com.app.admin.controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.app.Action;
import com.app.Result;
import com.app.dao.AdminDAO;
import com.app.vo.AdminNoticeVO;

public class AdminUpdateOkController implements Action {

    @Override
    public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        
        // 필수 객체 생성
        AdminDAO adminDAO = new AdminDAO();
        AdminNoticeVO adminNoticeVO = new AdminNoticeVO();
        Result result = new Result();

        // 필수 파라미터 가져오기
        String id = req.getParameter("id");                
        String adminId = req.getParameter("adminId");          
        String title = req.getParameter("adminNoticeTitle");     
        String content = req.getParameter("adminNoticeContent"); 
        
        // 파라미터 검증
        if (id == null || adminId == null || title == null || content == null) {
            req.setAttribute("errorMessage", "필수 내용이 누락되었습니다.");
            result.setPath("admin/updateNotice.jsp");
            result.setRedirect(false);
            return result;
        }

        // VO에 값 설정
        adminNoticeVO.setId(Long.parseLong(id));                
        adminNoticeVO.setAdminId(Long.parseLong(adminId));            
        adminNoticeVO.setAdminNoticeTitle(title);                  
        adminNoticeVO.setAdminNoticeContent(content);              

//        // 공지 업데이트
//        if (adminDAO.updateAdminNotice(adminNoticeVO)) {
//            result.setPath("../admin/announcementList.admin"); 
//            result.setRedirect(true);
//        } else {
//            req.setAttribute("errorMessage", "공지 업데이트에 실패했습니다.");
//            result.setPath("update.admin");
//            result.setRedirect(false);
//        }

        return result;
    }
}
