package com.app.admin.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.AdminDAO;
import com.app.vo.AdminVO;

public class AdminLoginOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		AdminDAO adminDAO = new AdminDAO();
		AdminVO adminVO = new AdminVO();
		String adminEmail = null;
		
		HttpSession session = req.getSession();
		
		adminVO.setAdminEmail(req.getParameter("adminEmail"));
		adminVO.setAdminPassword(req.getParameter("adminPassword"));
		
		
		adminEmail = adminDAO.select(adminVO);

		result.setRedirect(true);
		if(adminEmail == null) {
			result.setPath("../admin/loginAdmin.admin?login=false");
			return result;
		}
		
		session.setAttribute("adminEmail", adminEmail);
		result.setPath("announcementList.admin");
		return result;
	}
}
