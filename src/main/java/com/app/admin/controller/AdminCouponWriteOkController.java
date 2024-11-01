package com.app.admin.controller;

import java.io.IOException;

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
        Long adminId = adminDAO.selectByAdminEmail(adminEmail) != null ? 
            adminDAO.selectByAdminEmail(adminEmail).getId() : null;

        String couponTitle = req.getParameter("adminCouponTitle");
        String couponType = req.getParameter("adminCouponType");
        String couponCode = req.getParameter("adminCouponCode");
        String couponStart = req.getParameter("adminCouponStart");
        String couponEnd = req.getParameter("adminCouponEnd");
        String couponContent = req.getParameter("adminCouponContent");
        String couponQuantityStr = req.getParameter("adminCouponQuantity");
        String couponDiscountRateStr = req.getParameter("adminCouponDiscountRate");

        // 필수 입력값 검증
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

        // 쿠폰 수량 검증
        try {
            int couponQuantity = Integer.parseInt(couponQuantityStr);
            if (couponQuantity <= 0) {
                resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "쿠폰 수량을 1 이상으로 설정해 주세요.");
                return null;
            }
            adminCouponDTO.setAdminCouponQuantity(couponQuantity);
        } catch (NumberFormatException e) {
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "쿠폰 수량은 숫자 형식이어야 합니다.");
            return null;
        }

        // 할인율 처리 및 검증
        try {
            if ("custom".equals(couponDiscountRateStr)) {
                String customDiscountStr = req.getParameter("adminCouponDiscountRateCustom");
                double customDiscount = Double.parseDouble(customDiscountStr);
                if (customDiscount < 0 || customDiscount > 100) {
                    resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "커스텀 할인율은 0에서 100 사이여야 합니다.");
                    return null;
                }
                adminCouponDTO.setAdminCouponDiscountRate(customDiscount);
            } else {
                double discountRate = Double.parseDouble(couponDiscountRateStr);
                if (discountRate < 0 || discountRate > 100) {
                    resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "할인율은 0에서 100 사이여야 합니다.");
                    return null;
                }
                adminCouponDTO.setAdminCouponDiscountRate(discountRate);
            }
        } catch (NumberFormatException e) {
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "할인율은 숫자 형식이어야 합니다.");
            return null;
        }

        // DTO에 값 설정
        adminCouponDTO.setAdminId(adminId);
        adminCouponDTO.setAdminCouponTitle(couponTitle);
        adminCouponDTO.setAdminCouponType(couponType);
        adminCouponDTO.setAdminCouponCode(couponCode);
        adminCouponDTO.setAdminCouponStart(couponStart);
        adminCouponDTO.setAdminCouponEnd(couponEnd);
        adminCouponDTO.setAdminCouponContent(couponContent);

        // 중복 체크
        if (adminDAO.checkCouponCodeExists(couponCode)) {
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "이미 존재하는 쿠폰 코드입니다.");
            return null;
        }

        // 쿠폰 추가
        try {
            adminDAO.insertAdminCoupon(adminCouponDTO);
        } catch (RuntimeException e) {
            e.printStackTrace(); 
            resp.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "쿠폰 추가 중 오류가 발생했습니다.");
            return null;
        }

        result.setPath("../admin/admin-coupon-list.admin");
        result.setRedirect(true);

        return result;
    }
}
