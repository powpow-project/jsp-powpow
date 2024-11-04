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

public class MyhomeNotificationController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		MemberDAO memberDAO = new MemberDAO();
		HttpSession session = req.getSession();

		String memberEmail = (String)session.getAttribute("buyerEmail");
		Long memberId = memberDAO.findBuyerByEmail(memberEmail);

		memberDAO.select(memberId).map(MemberVO::isMemberEmailCheck).ifPresent((emailCheck) -> {
			req.setAttribute("emailCheck", emailCheck);
		});
		memberDAO.select(memberId).map(MemberVO::isMemberSms).ifPresent((smsCheck) -> {
			req.setAttribute("smsCheck", smsCheck);
		});
		
		// 결과 페이지 설정
		result.setPath("../myhome/myhome-notification.jsp");
		return result;
	}
}
