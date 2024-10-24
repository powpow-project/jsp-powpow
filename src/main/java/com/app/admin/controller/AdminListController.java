package com.app.admin.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.AdminDAO;
import com.app.vo.AdminNoticeVO;
import com.app.vo.AdminVO;

public class AdminListController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {

		Result result = new Result();
		AdminDAO adminDAO = new AdminDAO();
		List<AdminVO> adminList = adminDAO.selectAll();
		
		req.setAttribute("adminList", adminList);
		
		result.setPath("../admin/list.jsp");
		return result;
	}
}

