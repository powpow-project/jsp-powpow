package com.app.myhome.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.MemberDAO;
import com.app.dto.MemberDTO;

public class MyhomeUpdateOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		MemberDAO memberDAO = new MemberDAO();
		MemberDTO memberDTO = new MemberDTO();
		
		memberDAO.update(memberDTO);
		
		result.setRedirect(true);
		result.setPath(req.getContextPath() + "/login.member");
	
		
		return result;
	}

}
