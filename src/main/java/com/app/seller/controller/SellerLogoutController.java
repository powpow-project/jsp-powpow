package com.app.seller.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;

public class SellerLogoutController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		
		HttpSession session = req.getSession();
		session.invalidate();
		
		result.setRedirect(true);
		result.setPath("../member/login.member");
		
		
		return result;
	}

}
