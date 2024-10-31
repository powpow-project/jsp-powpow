package com.app.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.MemberDAO;
import com.app.vo.SellerVO;

public class MemberSellerLoginOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		MemberDAO memberDAO = new MemberDAO();
		SellerVO sellerVO = new SellerVO();
		String sellerEmail = null;
		
		HttpSession session = req.getSession();
		
		sellerVO.setSellerEmail(req.getParameter("sellerEmail"));
		sellerVO.setSellerPassword(req.getParameter("sellerPassword"));
		
		
		sellerEmail = memberDAO.selectSeller(sellerVO);
		
		result.setRedirect(true);
		if(sellerEmail == null) {
			result.setPath("../member/login.member?login=false");
			return result;
		}
		
		session.setAttribute("sellerEmail", sellerEmail);
		result.setPath("../index.jsp");
		
		return result;
    }
}
