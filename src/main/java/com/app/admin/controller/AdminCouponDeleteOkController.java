package com.app.admin.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.AdminDAO;

public class AdminCouponDeleteOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {

		Result result = new Result();
		AdminDAO adminDAO = new AdminDAO();
		
		adminDAO.deleteAdminCoupon(Long.parseLong(req.getParameter("id")));
		
		result.setRedirect(true);
		result.setPath("../admin/admin-coupon-list.admin");
		return result;
	}

}
