package com.app.admin.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.AdminDAO;
import com.app.dto.AdminNoticeDTO;

public class AdminUpdateOkController implements Action {

    @Override
    public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        
        Result result = new Result();
        AdminDAO adminDAO = new AdminDAO();
        AdminNoticeDTO adminNoticeDTO = new AdminNoticeDTO();
        
        Long id = Long.parseLong(req.getParameter("id"));
        adminNoticeDTO.setId(id);
        adminNoticeDTO.setAdminNoticeTitle(req.getParameter("adminNoticeTitle"));
        adminNoticeDTO.setAdminNoticeContent(req.getParameter("adminNoticeContent"));
        
        adminDAO.updateAdminNotice(adminNoticeDTO);
        
        result.setRedirect(true);
        result.setPath("../admin/admin-list.admin");
        return result;
        
    }
}
