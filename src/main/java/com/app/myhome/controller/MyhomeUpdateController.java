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

public class MyhomeUpdateController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		MemberDAO memberDAO = new MemberDAO();
		MemberVO memberVO = new MemberVO();
		MyhomeDAO myhomeDAO = new MyhomeDAO();
		HttpSession session = req.getSession();

		String memberEmail = (String) session.getAttribute("buyerEmail");
//				System.out.println(memberEmail);
		Long memberId = 1L;

		// HttpServletRequest로부터 파라미터 받아오기 Long memberId =
		Long.valueOf(req.getParameter("id"));
		String memberNickname = req.getParameter("memberNickname");
		String memberAddress = req.getParameter("memberAddress");
		String memberPhone = req.getParameter("memberPhone");
		req.getParameter("memberImage");

		// MemberVO에 값 세팅 memberVO.setId(memberId);
		memberVO.setMemberNickname(memberNickname);
		memberVO.setMemberAddress(memberAddress);
		memberVO.setMemberPhone(memberPhone);

		// DAO를 통해 업데이트 수행 
		memberDAO.updateBuyer(memberVO);

		// 결과 페이지 설o정
//		req.setAttribute(members, members);
		result.setPath("../myhome/myhome-update.jsp");
		return result;
	}
}
