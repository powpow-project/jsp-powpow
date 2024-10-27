package com.app.admin.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.AdminDAO;
import com.app.dto.AdminBannerDTO;
import com.app.dto.AdminNoticeDTO;

public class AdminBannerWriteOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {

	    AdminDAO adminDAO = new AdminDAO();
	    AdminBannerDTO adminBannerDTO = new AdminBannerDTO();
	    Result result = new Result();
	    HttpSession session = req.getSession();
	    
	    String adminEmail = (String)session.getAttribute("adminEmail");
	    Long adminId = adminDAO.selectByAdminEmail(adminEmail).getId();
	    
	    System.out.println(adminId);

		
		return result;
	}

}
