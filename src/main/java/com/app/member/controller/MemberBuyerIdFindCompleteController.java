package com.app.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.MemberDAO;

public class MemberBuyerIdFindCompleteController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();	
		MemberDAO memberDAO = new MemberDAO();
		
	    String buyerName = req.getParameter("member_name");
	    String buyerPhone = req.getParameter("member_phone");
	     
	
//	    String buyerFindEmail = memberDAO.findBuyerByEmail(null);
		result.setPath("../member/member-buyer-id-find-complete.jsp");
		
		return result;
	}

}
