package com.app.admin.controller;

import java.io.IOException;
import java.util.Optional;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.AdminDAO;
import com.app.vo.AdminCouponVO;
import com.app.vo.AdminVO;

public class AdminCouponWriteOkController implements Action {

    @Override
    public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        Result result = new Result();
        AdminDAO adminDAO = new AdminDAO();
        AdminCouponVO adminCouponVO = new AdminCouponVO();
        
        HttpSession session = req.getSession();
        String adminEmail = (String)session.getAttribute("adminEmail");
        Optional<AdminVO> findAdmin = adminDAO.selectByAdminEmail(adminEmail);
        Long id = findAdmin.map(AdminVO::getId).get();
        
        String couponTitle = req.getParameter("adminCouponTitle");
        String couponType = req.getParameter("adminCouponType");
        String couponCode = req.getParameter("adminCouponCode");
        String couponStart = req.getParameter("adminCouponStart");
        String couponEnd = req.getParameter("adminCouponEnd");
        String couponContent = req.getParameter("adminCouponContent");
        int couponQuantityStr = Integer.parseInt(req.getParameter("adminCouponQuantity"));
        Double couponDiscountRate = Double.parseDouble(req.getParameter("adminCouponDiscountRate"));

        adminCouponVO.setAdminId(id);
        adminCouponVO.setAdminCouponTitle(couponTitle);
        adminCouponVO.setAdminCouponType(couponType);
        adminCouponVO.setAdminCouponCode(couponCode);
        adminCouponVO.setAdminCouponStart(couponStart);
        adminCouponVO.setAdminCouponEnd(couponEnd);
        adminCouponVO.setAdminCouponContent(couponContent);
        adminCouponVO.setAdminCouponQuantity(couponQuantityStr);
        adminCouponVO.setAdminCouponDiscountRate(couponDiscountRate);
        
        adminDAO.insertAdminCoupon(adminCouponVO);
        
        result.setPath("../admin/admin-coupon-list.admin");
        result.setRedirect(true);

        return result;
    }
}
