package com.app.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.MemberDAO;
import com.app.vo.MemberVO;

public class MemberBuyerLoginOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		   Result result = new Result();
	        MemberDAO memberDAO = new MemberDAO();
	        MemberVO memberVO = new MemberVO();
	        HttpSession session = req.getSession();
	        
	        memberVO.setMemberEmail(req.getParameter("buyerEmail"));
	        memberVO.setMemberPassword(req.getParameter("buyerPassword"));

	        // 구매자 로그인 시도
	        String loggedInEmail = memberDAO.selectBuyer(memberVO);
	        result.setRedirect(true);
	        
	        // 로그인 결과에 따라 처리
	        if (loggedInEmail == null) {
	            // 로그인 실패
	            result.setPath(req.getContextPath() + "/login.member?login=false");
	            return result;
	        }
	        
	        // 로그인 성공
	        session.setAttribute("buyerEmail", loggedInEmail);
	        result.setPath("../../../index.jsp"); // 메인 페이지로 리다이렉트
	        return result;
	    }
	}
	        
	