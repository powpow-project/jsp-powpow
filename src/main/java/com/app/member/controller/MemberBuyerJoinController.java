package com.app.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.MemberDAO;
import com.app.vo.MemberVO;

public class MemberBuyerJoinController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		MemberDAO memberDAO = new MemberDAO();
		MemberVO memberVO = new MemberVO();
		
//		memberVO.setMemberImage("이미지파일이름.jpg");
		memberVO.setMemberEmail(req.getParameter("memberEmail"));
		System.out.println(req.getParameter("memberEmail"));
//		memberVO.setMemberPassword(req.getParameter("memberPassword"));
//		memberVO.setMemberNickname(req.getParameter("memberNickname"));
//		memberVO.setMemberPhone(req.getParameter("memberPhone"));
//		memberVO.setMemberAdress(req.getParameter("memberAdress"));
//		memberVO.setMemberSms("");
//		memberVO.setMemberEmailCheck("");
		memberDAO.insert(memberVO);
		
		result.setRedirect(true);
		result.setPath(req.getContextPath() + "/buyer-join-complete.jsp");
		
		return result;
	}

}
