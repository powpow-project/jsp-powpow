package com.app.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Result;
import com.app.admin.controller.AdminBannerDeleteOkController;
import com.app.admin.controller.AdminBannerListController;
import com.app.admin.controller.AdminBannerUpdateController;
import com.app.admin.controller.AdminBannerUpdateOkController;
import com.app.admin.controller.AdminBannerWriteOkController;
import com.app.admin.controller.AdminCouponDeleteOkController;
import com.app.admin.controller.AdminCouponListController;
import com.app.admin.controller.AdminCouponUpdateController;
import com.app.admin.controller.AdminCouponUpdateOkController;
import com.app.admin.controller.AdminCouponWriteOkController;
import com.app.admin.controller.AdminCustomerInfoListController;
import com.app.admin.controller.AdminDeleteOkController;
import com.app.admin.controller.AdminListController;
import com.app.admin.controller.AdminLoginOkController;
import com.app.admin.controller.AdminSellerInfoListController;
import com.app.admin.controller.AdminUpdateController;
import com.app.admin.controller.AdminUpdateOkController;
import com.app.admin.controller.AdminWriteOkController;

public class AdminFrontController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	    req.setCharacterEncoding("UTF-8");
	    resp.setContentType("text/html; charset=utf-8");
	    String target = req.getRequestURI().replace(req.getContextPath() + "/admin/", "").split("\\.")[0];
	    Result result = null;
	    
	    
	    
	    // 로그인 목록
	    if (target.equals("admin-loginAdmin")) { // 로그인 페이지 로직
	        result = new Result();
	        result.setPath("../admin/admin-loginAdmin.jsp");

	    } else if (target.equals("admin-loginAdmin-ok")) { // 로그인 처리 로직
	        result = new AdminLoginOkController().execute(req, resp);
	        
	    // 공지사항 관리 목록    
	    } else if (target.equals("admin-write")) { // 공지사항 등록 페이지 이동 처리
	    	result = new Result();
	    	result.setPath("../admin/admin-write.jsp"); // JSP로 포워딩
	    	
	    } else if (target.equals("admin-write-ok")) { // 공지사항 등록 페이지 완료
	    	result = new AdminWriteOkController().execute(req, resp);

	    } else if (target.equals("admin-list")) { // 공지사항 목록
	        result = new AdminListController().execute(req, resp);
	        
	    } else if (target.equals("admin-update")) { // 공지사항 수정
	        result = new AdminUpdateController().execute(req, resp);

	    } else if (target.equals("admin-update-ok")) { // 공지사항 수정 완료
	        result = new AdminUpdateOkController().execute(req, resp);

	    } else if (target.equals("admin-delete-ok")) { // 공지사항 삭제
	        result = new AdminDeleteOkController().execute(req, resp);
	        
	    
	    // 배너관리 목록        
	    } else if (target.equals("admin-banner-list")) { // 배너 목록
	        result = new AdminBannerListController().execute(req, resp);
	    	
	    } else if (target.equals("admin-banner-write")) { // 배너 신규등록 페이지
	        result = new Result();
	        result.setPath("../admin/admin-banner-write.jsp");
	        
	    } else if (target.equals("admin-banner-write-ok")) { // 배너 등록 페이지 완료
	    	result = new AdminBannerWriteOkController().execute(req, resp);
	    	
	    } else if (target.equals("admin-banner-update")) { // 배너 수정
	        result = new AdminBannerUpdateController().execute(req, resp);

	    } else if (target.equals("admin-banner-update-ok")) { // 배너 수정 완료
	        result = new AdminBannerUpdateOkController().execute(req, resp);

	    } else if (target.equals("admin-banner-delete-ok")) { // 배너 삭제
	        result = new AdminBannerDeleteOkController().execute(req, resp);
	        
	    
	    // 쿠폰관리 목록
	    } else if (target.equals("admin-coupon-list")) { // 쿠폰 목록
	        result = new AdminCouponListController().execute(req, resp);
	    	
	    } else if (target.equals("admin-coupon-write")) { // 쿠폰 신규등록 페이지
	        result = new Result();
	        result.setPath("../admin/admin-coupon-write.jsp");
	        
	    } else if (target.equals("admin-coupon-write-ok")) { // 쿠폰 등록 페이지 완료
	    	result = new AdminCouponWriteOkController().execute(req, resp);
	    	
	    } else if (target.equals("admin-coupon-update")) { // 쿠폰 수정
	        result = new AdminCouponUpdateController().execute(req, resp);

	    } else if (target.equals("admin-coupon-update-ok")) { // 쿠폰 수정 완료
	    	result = new AdminCouponUpdateOkController().execute(req, resp);

	    } else if (target.equals("admin-coupon-delete-ok")) { // 공지사항 삭제
	        result = new AdminCouponDeleteOkController().execute(req, resp);
	        
	        
	    // 일반회원관리 목록
		} else if (target.equals("admin-customerInfo-list")) { // 일반회원 목록
		    result = new AdminCustomerInfoListController().execute(req, resp);
		    
		    System.out.println(target);
		//판매자회원관리 목록
	    } else if (target.equals("admin-sellerInfo-list")) { // 판매자회원 목록
			result = new AdminSellerInfoListController().execute(req, resp);

	    } else {
	        result = new Result();
	        result.setPath("../not-found.jsp");
	    }
	    
	    if (result != null) {
	        if (result.isRedirect()) {
	            resp.sendRedirect(result.getPath());
	        } else {
	            req.getRequestDispatcher(result.getPath()).forward(req, resp);
	        }
	    }
	}


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}