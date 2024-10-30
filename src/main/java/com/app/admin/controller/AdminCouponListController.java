package com.app.admin.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.AdminDAO;
import com.app.dto.AdminCouponDTO;

public class AdminCouponListController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {

		Result result = new Result();
		AdminDAO adminDAO = new AdminDAO();
		
		List<AdminCouponDTO> adminCouponList = adminDAO.selectAllCoupons();
		
		req.setAttribute("adminCouponList", adminCouponList);
		System.out.println(adminCouponList);
		
		result.setPath("../admin/admin-coupon-list.jsp");
		return result;
	}
}
