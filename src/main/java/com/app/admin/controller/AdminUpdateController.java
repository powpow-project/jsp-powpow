package com.app.admin.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.AdminDAO;
import com.app.dto.AdminNoticeDTO;

public class AdminUpdateController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		AdminDAO adminDAO = new AdminDAO();

		AdminNoticeDTO adminNotice = adminDAO.selectAdminNotice(Long.parseLong(req.getParameter("id"))).orElseThrow(() -> {
			throw new RuntimeException();
		});

		req.setAttribute("adminNotice", adminNotice);
		result.setPath("admin-update.jsp");

		return result;
	}
}