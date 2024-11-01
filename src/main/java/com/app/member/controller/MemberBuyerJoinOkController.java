package com.app.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.MemberDAO;
import com.app.vo.MemberVO;

public class MemberBuyerJoinOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		MemberDAO memberDAO = new MemberDAO();
		MemberVO memberVO = new MemberVO();
		String[] arrAddress = null;
		String address = "";
		String defaultImagePath = "none_profile.png";

//		 #{memberImage}, #{memberNickname}, #{memberEmail}, #{memberPassword}, #{memberPhone}, #{memberAddress}, #{memberSms}, #{memberEmailCheck}
		memberVO.setMemberImage(defaultImagePath);
		memberVO.setMemberEmail(req.getParameter("buyerEmail"));
		memberVO.setMemberPassword(req.getParameter("buyerPassword"));
		memberVO.setMemberNickname(req.getParameter("name"));
		memberVO.setMemberPhone(req.getParameter("phone"));
		memberVO.setMemberSms(req.getParameter("sms").charAt(0));
		memberVO.setMemberEmailCheck(req.getParameter("emailcheck").charAt(0));
		
//		System.out.println(req.getParameter("buyerEmail"));
//		System.out.println(req.getParameter("buyerPassword"));
//		System.out.println(req.getParameter("name"));
//		System.out.println(req.getParameter("phone"));
//		System.out.println(req.getParameter("sms").charAt(0));
//		System.out.println(req.getParameter("emailcheck").charAt(0));
		
		arrAddress = req.getParameterValues("address");
		for(int i = 0; i < arrAddress.length; i++) {
			address += i == arrAddress.length - 1 ? arrAddress[i] : arrAddress[i] + " ";
		}
		memberVO.setMemberAddress(address);
		
		memberDAO.insertBuyer(memberVO);
		
		result.setRedirect(true);
		result.setPath("../member/buyer-join-complete.member");
		
		return result;
	}

}
