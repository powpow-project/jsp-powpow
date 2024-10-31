package com.app.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Result;
import com.app.member.controller.MemberBuyerAccountFindController;
import com.app.member.controller.MemberBuyerJoinCompleteController;
import com.app.member.controller.MemberBuyerJoinController;
import com.app.member.controller.MemberBuyerJoinOkController;
import com.app.member.controller.MemberBuyerLoginOkController;
import com.app.member.controller.MemberBuyerUpdateController;
import com.app.member.controller.MemberBuyerUpdateOkController;
import com.app.member.controller.MemberDeleteOkController;
import com.app.member.controller.MemberFindChoiceController;
import com.app.member.controller.MemberJoinChoiceController;
import com.app.member.controller.MemberLoginController;
import com.app.member.controller.MemberLogoutController;
import com.app.member.controller.MemberSellerAccountFindController;
import com.app.member.controller.MemberSellerJoinCompleteController;
import com.app.member.controller.MemberSellerJoinController;
import com.app.member.controller.MemberSellerJoinOkController;
import com.app.member.controller.MemberSellerLoginOkController;
import com.app.member.controller.MemberSellerUpdateController;
import com.app.member.controller.MemberSellerUpdateOkController;

public class MemberFrontController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html; charset=utf-8");
		String target = req.getRequestURI().replace(req.getContextPath() + "/member/", "").split("\\.")[0];
		Result result = null;
		
		System.out.println(target);
		
//		로그인페이지!!
		if(target.equals("login")) {
			result = new Result();
			result.setPath("../member/member-login.jsp");
	        
//		회원가입 버튼 누르면 이동 페이지(구매자,판매자 선택)
		}else if(target.equals("join-choice")) {
			result = new MemberJoinChoiceController().execute(req, resp);	
			
//		아이디/비밀번혼 찾기 버튼 누르면 이동 페이지(구매자,판매자 선택)
		}else if(target.equals("find-choice")) {
			result = new MemberFindChoiceController().execute(req, resp);
			
//		구매자 선택 후 아이디/비밀번호 찾기 페이지
		}else if(target.equals("buyer-account-find")) {
			result = new MemberBuyerAccountFindController().execute(req, resp);	
			
//		판매자 선택 후 아이디/비밀번호 찾기 페이지
		}else if(target.equals("seller-account-find")) {
			result = new MemberSellerAccountFindController().execute(req, resp);		
	        
//		구매자 로그인 완료 페이지
		}else if(target.equals("buyer-login-ok")) {
			result = new MemberBuyerLoginOkController().execute(req, resp);	
			
//		판매자 로그인 완료 페이지
		}else if(target.equals("seller-login-ok")) {
			result = new MemberSellerLoginOkController().execute(req, resp);
			
//		구매자,판매자 로그아웃 페이지		
		}else if(target.equals("logout")) {
			result = new MemberLogoutController().execute(req, resp);
			
//		인증번호 사용 (구매자,판매자 - 회원가입 전, 아이디 찾을 때, 비밀번호 재 설정할 때)
//		}else if(target.equals("buyer-sms")) {
//			result = new MemberSmsController().execute(req, resp);
		
//		구매자 회원가입 페이지		
		}else if(target.equals("buyer-join")) {
			result = new MemberBuyerJoinController().execute(req, resp);
			
//		구매자 회원가입 완료 버튼 누르기		
		}else if(target.equals("buyer-join-ok")) {
			result = new MemberBuyerJoinOkController().execute(req, resp);
			
//		구매자 회원가입 완료 페이지	
		}else if(target.equals("buyer-join-complete")) {
			result = new MemberBuyerJoinCompleteController().execute(req, resp);
			
//		판매자 회원가입 페이지			
		}else if(target.equals("seller-join")) {
			result = new MemberSellerJoinController().execute(req, resp);
			
//		판매자 회원가입 완료 페이지					
		}else if(target.equals("seller-join-ok")) {
			result = new MemberSellerJoinOkController().execute(req, resp);
			
//		판매자 회원가입 완료 페이지	
		}else if(target.equals("seller-join-complete")) {
			result = new MemberSellerJoinCompleteController().execute(req, resp);
			
//		로그인페이지				
		}else if(target.equals("login")) {
			result = new MemberLoginController().execute(req, resp);	
			
//		구매자 회원 정보 수정 페이지(비밀번호 재설정)
		}else if(target.equals("buyer-update")) {
			result = new MemberBuyerUpdateController().execute(req, resp);
			
//		구매자 회원 정보 수정 완료 페이지(비밀번호 재설정)			
		}else if(target.equals("buyer-update-ok")) {
			result = new MemberBuyerUpdateOkController().execute(req, resp);
			
//		판매자 회원 정보 수정 페이지(비밀번호 재설정)			
		}else if(target.equals("seller-update")) {
			result = new MemberSellerUpdateController().execute(req, resp);
			
//		판매자 회원 정보 수정 완료 페이지(비밀번호 재설정)	
		}else if(target.equals("seller-update-ok")) {
			result = new MemberSellerUpdateOkController().execute(req, resp);
			
//		구매자,판매자 계정 삭제			
		}else if(target.equals("delete-ok")) {
			result = new MemberDeleteOkController().execute(req, resp);
			
		}else {
			result = new Result();
			result.setPath("../not-found.jsp");
		}
		
		if(result != null) {
			if(result.isRedirect()){
//				redirect
				resp.sendRedirect(result.getPath());
			}else {
//				forward
				req.getRequestDispatcher(result.getPath()).forward(req, resp);
			}
		}
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
