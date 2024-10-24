package com.app.admin.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.AdminDAO;

public class AdminDeleteOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		
		Result result = new Result();
		AdminDAO adminDAO = new AdminDAO();
		
		adminDAO.deleteAdminNotice(Long.parseLong(req.getParameter("id")));
		
		result.setRedirect(true);
		result.setPath("list.admin");
		
		return result;
	}
}
