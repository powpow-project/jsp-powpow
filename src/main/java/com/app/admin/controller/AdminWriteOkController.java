package com.app.admin.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Result;
import com.app.dao.AdminDAO;
import com.app.dto.AdminNoticeDTO;

public class AdminWriteOkController {
	public Result execute(HttpServletRequest req, HttpServletResponse resp) {
	    AdminDAO adminDAO = new AdminDAO();
	    AdminNoticeDTO adminNoticeDTO = new AdminNoticeDTO();
	    Result result = new Result();
	    HttpSession session = req.getSession();


	    String adminEmail = (String)session.getAttribute("adminEmail");
	    Long adminId = adminDAO.selectByAdminEmail(adminEmail).getId();

	    
	    String adminNoticeTitle = req.getParameter("adminNoticeTitle");
	    String adminNoticeContent = req.getParameter("adminNoticeContent");

	    adminNoticeDTO.setAdminId(adminId);
	    adminNoticeDTO.setAdminNoticeTitle(adminNoticeTitle);
	    adminNoticeDTO.setAdminNoticeContent(adminNoticeContent);
	    adminNoticeDTO.setAdminNoticeNumber(1);

	    
	    adminDAO.insertAdminNotice(adminNoticeDTO);

	    result.setRedirect(true);
	    result.setPath("../admin/admin-list.admin");

	    return result;
	}
}
