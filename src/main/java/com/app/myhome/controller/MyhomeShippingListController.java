package com.app.myhome.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;

public class MyhomeShippingListController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
//		MyhomeDAO myhomeDAO = new MyhomeDAO();
//		MemberVO membrVO = new MemberVO();
//		MemberDAO memberDAO = new MemberDAO();
//		HttpSession session = req.getSession();
		
//		String memberEmail = session.getAttribute("memberEmail");
		String memberEmail = "jingeo@gmail.com";
		
//		MemberVO member = memberDAO.selectMemberByEmail(memberEmail);
		
//		req.setAttribute("member", member);
		result.setPath("../myhome/myhome-shipping-list.jsp");

		return result;
	}

}
