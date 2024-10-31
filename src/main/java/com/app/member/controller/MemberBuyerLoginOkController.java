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
		String buyerEmail = null;
		
		HttpSession session = req.getSession();
		
		memberVO.setMemberEmail(req.getParameter("buyerEmail"));
		memberVO.setMemberPassword(req.getParameter("buyerPassword"));
		
		
		buyerEmail = memberDAO.selectBuyer(memberVO);
		
		result.setRedirect(true);
		if(buyerEmail == null) {
			result.setPath("../member/login.member?login=false");
			return result;
		}
		
		session.setAttribute("buyerEmail", buyerEmail);
		result.setPath("../index.jsp");
		
		return result;
    }
}
