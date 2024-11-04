package com.app.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;

public class MemberSnsController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		
		HttpSession session = req.getSession();
		
		String codeNumber = "";
		for(int i = 0; i < 6; i++) {
			codeNumber += (int)(Math.floor(Math.random() * 10));
		}
		
		session.setAttribute("code", session);
//		sns 날리는 코드
		
		
		return result;
	}

}
