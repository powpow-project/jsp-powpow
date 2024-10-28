package com.app.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.BusinessDAO;
import com.app.dao.MemberDAO;
import com.app.dto.BusinessDTO;
import com.app.vo.BusinessVO;
import com.app.vo.MemberVO;
import com.app.vo.SellerVO;

public class MemberSellerJoinOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		MemberDAO memberDAO = new MemberDAO();
		SellerVO sellerVO = new SellerVO();


//		 #{businessId}, #{sellerEmail}, #{sellerPassword}, #{sellerName}, #{sellerPhone}, #{sellerSms}, #{sellerEmailCheck}
//		sellerVO.setBusi(req.getParameter("email"));
		sellerVO.setSellerPassword(req.getParameter("password"));
		sellerVO.setSellerName(req.getParameter("name"));
		sellerVO.setSellerPhone(req.getParameter("phone"));
		sellerVO.setSellerSms(req.getParameter("sms").charAt(0));
		sellerVO.setSellerEmailCheck(req.getParameter("emailcheck").charAt(0));
		
		memberDAO.insertSeller(sellerVO);
		
		result.setRedirect(true);
		result.setPath("../member/seller-join-complete.member");
		
		return result;
	}

}
