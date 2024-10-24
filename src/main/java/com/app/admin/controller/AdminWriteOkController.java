package com.app.admin.controller;

import com.app.Result;
import com.app.dao.AdminDAO;
import com.app.dto.AdminNoticeDTO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AdminWriteOkController {
    public Result execute(HttpServletRequest req, HttpServletResponse resp) {
        
        AdminDAO adminDAO = new AdminDAO();
        AdminNoticeDTO adminNoticeDTO = new AdminNoticeDTO();
        Result result = new Result();
        
        String adminEmail = "admin";
        Long adminId = adminDAO.selectByAdminEmail(adminEmail).getId();
        
        adminNoticeDTO.setAdminId(adminId);
        adminNoticeDTO.setAdminNoticeContent(req.getParameter("adminNoticeContent"));
        adminNoticeDTO.setAdminNoticeTitle(req.getParameter("adminNoticeTitle"));
        adminNoticeDTO.setAdminNoticeNumber(1);
        
        System.out.println(req.getParameter("adminNoticeContent"));
        System.out.println(req.getParameter("adminNoticeTitle"));
        System.out.println(adminId);
        
        adminDAO.insertAdminNotice(adminNoticeDTO);
        
        
        result.setRedirect(true);
        result.setPath("../admin/list.admin");
        
        return result;
    }
}