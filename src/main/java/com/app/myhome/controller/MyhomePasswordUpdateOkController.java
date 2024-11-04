package com.app.myhome.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.MemberDAO;
import com.app.dao.MyhomeDAO;
import com.app.vo.MemberVO;

public class MyhomePasswordUpdateOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
	    Result result = new Result();
	    MyhomeDAO myhomeDAO = new MyhomeDAO();
	    MemberVO memberVO = new MemberVO();
	    MemberDAO memberDAO = new MemberDAO();
	    HttpSession session = req.getSession();
	    Long id = memberDAO.findBuyerByEmail((String)session.getAttribute("buyerEmail"));
	    
	    String newPassword = req.getParameter("newPassword");
	    memberVO.setMemberPassword(newPassword);
	    memberVO.setId(id);
	    System.out.println(memberVO);
	    myhomeDAO.updatePassword(memberVO);
	    
	    result.setRedirect(true);
	    result.setPath("../myhome/myhome-password-update-ok.jsp"); // JSP 경로
	    return result;
    }
}







