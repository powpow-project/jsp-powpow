package com.app.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;

public class MemberLoginController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		
		String buyerEmail = (String)req.getSession().getAttribute("buyerEmail");
		System.out.println(buyerEmail);
		if(buyerEmail == null) {
			result.setPath("../member/member-login.jsp");
		}else {
			result.setRedirect(true);
			result.setPath("../index.jsp");
		}
        return result;
    }
}
		

