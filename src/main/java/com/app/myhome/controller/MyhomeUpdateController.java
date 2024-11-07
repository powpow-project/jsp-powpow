package com.app.myhome.controller;

import java.io.IOException;
import java.util.Optional;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.MemberDAO;
import com.app.dao.MyhomeDAO;
import com.app.vo.MemberVO;

public class MyhomeUpdateController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		MemberVO membrVO = new MemberVO();
		MemberDAO memberDAO = new MemberDAO();
		HttpSession session = req.getSession();
		
		String memberEmail = (String)session.getAttribute("buyerEmail");
		
		Long memberId = memberDAO.findBuyerByEmail(memberEmail);
		Optional<MemberVO> findMember = memberDAO.select(memberId);
		findMember.ifPresent((memberVO) -> {
			System.out.println(memberVO);
			req.setAttribute("member", memberVO);
		});

		result.setPath("../myhome/myhome-update.jsp");
		
		return result;
	}
}
