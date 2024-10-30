package com.app.admin.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.app.Action;
import com.app.Result;
import com.app.dao.AdminDAO;
import com.app.dto.AdminCouponDTO;

public class AdminCouponUpdateOkController implements Action {

    @Override
    public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        Result result = new Result();
        AdminDAO adminDAO = new AdminDAO();
        AdminCouponDTO adminCouponDTO = new AdminCouponDTO();

        Long id = Long.parseLong(req.getParameter("id"));
        adminCouponDTO.setId(id);
        
        String couponTitle = req.getParameter("adminCouponTitle"); 
        String couponType = req.getParameter("adminCouponType"); 
        String couponCode = req.getParameter("adminCouponCode"); 
        String couponStart = req.getParameter("adminCouponStart"); 
        String couponEnd = req.getParameter("adminCouponEnd");
        String couponContent = req.getParameter("adminCouponContent");
        String couponQuantityStr = req.getParameter("adminCouponQuantity");
        String couponDiscountRateStr = req.getParameter("adminCouponDiscountRate");
        
        
        System.out.println(couponTitle);
        System.out.println(couponType);
        System.out.println(couponCode);
        System.out.println(couponStart);
        System.out.println(couponEnd);
        System.out.println(couponContent);
        System.out.println(couponQuantityStr);
        System.out.println(couponDiscountRateStr);
        
        
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

        if (couponStart == null || couponStart.trim().isEmpty()) {
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "시작 날짜를 입력해 주세요.");
            return null;
        }

        if (couponEnd == null || couponEnd.trim().isEmpty()) {
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "종료 날짜를 입력해 주세요.");
            return null;
        }

        // 쿠폰 수량 검증
        Integer couponQuantity = null;
        try {
            couponQuantity = Integer.parseInt(couponQuantityStr);
            if (couponQuantity <= 0) {
                resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "쿠폰 수량은 1 이상이어야 합니다.");
                return null;
            }
        } catch (NumberFormatException e) {
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "쿠폰 수량은 숫자 형식이어야 합니다.");
            return null;
        }

        // 쿠폰 할인율 검증
        Double couponDiscountRate = null;
        try {
            couponDiscountRate = Double.parseDouble(couponDiscountRateStr);
            if (couponDiscountRate < 0) {
                resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "쿠폰 할인율은 0 이상이어야 합니다.");
                return null;
            }
        } catch (NumberFormatException e) {
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "쿠폰 할인율은 숫자 형식이어야 합니다.");
            return null;
        }

        adminCouponDTO.setAdminCouponTitle(couponTitle);
        adminCouponDTO.setAdminCouponType(couponType); 
        adminCouponDTO.setAdminCouponCode(couponCode);
        adminCouponDTO.setAdminCouponStart(couponStart);
        adminCouponDTO.setAdminCouponEnd(couponEnd);
        adminCouponDTO.setAdminCouponContent(couponContent);
        adminCouponDTO.setAdminCouponQuantity(couponQuantity);
        adminCouponDTO.setAdminCouponDiscountRate(couponDiscountRate);

        adminDAO.updateAdminCoupon(adminCouponDTO);

        result.setRedirect(true);
        result.setPath("../admin/admin-coupon-list.admin");
        return result;
    }
}
