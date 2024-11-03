package com.app.myhome.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;

public class MyhomeNoPetController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		HttpSession session = req.getSession();
		
		String memberEmail = (String)session.getAttribute("buyerEmail");
//		System.out.println(memberEmail);
		Long memberId = 1L;
		
		
		result.setPath("../myhome/myhome-no-pet.jsp");

		return result;
	}

}
