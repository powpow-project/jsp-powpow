package com.app.myhome.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.MemberDAO;
import com.app.vo.MemberVO;

public class MyhomePasswordUpdateController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
	    Result result = new Result();
	    MemberDAO memberDAO = new MemberDAO();
		MemberVO memberVO = new MemberVO();
		HttpSession session = req.getSession();

		String memberEmail = (String) session.getAttribute("buyerEmail");
//			System.out.println(memberEmail);
		Long memberId = 1L;
	 
		// DAO를 통해 업데이트 수행 
		memberDAO.updateBuyer(memberVO);
	    result.setPath("../myhome/myhome-password-update.jsp"); // JSP 경로
	    
	    
	    return result;
    }
}







