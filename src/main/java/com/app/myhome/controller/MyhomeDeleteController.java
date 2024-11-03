package com.app.myhome.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.MemberDAO;

public class MyhomeDeleteController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		MemberDAO memberDAO = new MemberDAO();
		HttpSession session = req.getSession();
		   
			String memberEmail = (String)session.getAttribute("buyerEmail");
//			System.out.println(memberEmail);
			Long memberId = 1L;
		
		memberDAO.deleteBuyer(Long.parseLong(req.getParameter("id")));
		
		
		result.setRedirect(true);
		result.setPath("../myhome/delete.member");
		return result;
	}

}
