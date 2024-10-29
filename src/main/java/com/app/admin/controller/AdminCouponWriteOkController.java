package com.app.admin.controller;

import java.io.IOException;
import java.sql.Timestamp;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.AdminDAO;
import com.app.dto.AdminCouponDTO;

public class AdminCouponWriteOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		AdminDAO adminDAO = new AdminDAO();
		AdminCouponDTO adminCouponDTO = new AdminCouponDTO();
		HttpSession session = req.getSession();

		String adminEmail = (String) session.getAttribute("adminEmail");
		Long adminId = adminDAO.selectByAdminEmail(adminEmail).getId();

		String couponTitle = req.getParameter("adminCouponTitle");
		String couponType = req.getParameter("adminCouponType");
		String couponCode = req.getParameter("adminCouponCode");
		String couponStart = req.getParameter("adminCouponStart");
		String couponEnd = req.getParameter("adminCouponEnd");
		String couponContent = req.getParameter("adminCouponContent");
		Integer couponQuantity = Integer.parseInt(req.getParameter("adminCouponQuantity"));
		Double couponDiscountRate = Double.parseDouble(req.getParameter("adminCouponDiscountRate"));

		if (couponTitle == null || couponTitle.trim().isEmpty()) {
			resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "쿠폰 제목을 입력해 주세요.");
			return null;
		}

		if (couponType == null) {
			resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "쿠폰 타입을 선택해 주세요.");
			return null;
		}

		if (couponCode == null || couponCode.trim().isEmpty()) {
			resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "쿠폰 코드를 입력해 주세요.");
			return null;
		}

		if (couponStart == null || couponEnd == null) {
			resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "기간을 설정해 주세요.");
			return null;
		}

		if (couponQuantity == null || couponQuantity <= 0) {
			resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "쿠폰 수량을 입력해 주세요.");
			return null;
		}

		if (couponDiscountRate == null || couponDiscountRate < 0) {
			resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "할인율을 입력해 주세요.");
			return null;
		}

		adminCouponDTO.setAdminId(adminId);
		adminCouponDTO.setAdminCouponTitle(couponTitle);
		adminCouponDTO.setAdminCouponType(couponType);
		adminCouponDTO.setAdminCouponCode(couponCode);
		adminCouponDTO.setAdminCouponStart(couponStart);
		adminCouponDTO.setAdminCouponEnd(couponEnd);
		adminCouponDTO.setAdminCouponContent(couponContent);
		adminCouponDTO.setAdminCouponQuantity(couponQuantity);
		adminCouponDTO.setAdminCouponDiscountRate(couponDiscountRate);

		adminDAO.insertCoupon(adminCouponDTO);

		result.setPath("../admin/admin-coupon-list.admin");
		result.setRedirect(true);

		return result;
	}
}
