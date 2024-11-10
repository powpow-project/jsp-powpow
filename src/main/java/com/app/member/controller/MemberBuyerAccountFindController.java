package com.app.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.app.Action;
import com.app.Result;


public class MemberBuyerAccountFindController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		
		String findEmail = (String)req.getSession().getAttribute("phone");
		System.out.println(findEmail);
		
		if(findEmail == null) {
			result.setPath("../member/member-buyer-account-find.jsp");
		}else {
			result.setRedirect(true);
			result.setPath("../member/member-buyer-account-find.jsp");
		}
        return result;
    }
}
