package com.app.myhome.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.MemberDAO;
import com.app.vo.MemberVO;

public class MyhomeImageController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
//		Result result = new Result();
//		MemberDAO memberDAO = new MemberDAO();
//		MemberVO memberVO = new MemberVO();
//		
////		memberDAO.insert(memberVO);
//		
//		result.setRedirect(true);
//		result.setPath(req.getContextPath() + "/login.member");
//		
		return null;
	}

}
