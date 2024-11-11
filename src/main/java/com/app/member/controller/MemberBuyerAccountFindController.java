package com.app.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.app.Action;
import com.app.Result;
import com.app.dao.MemberDAO;


public class MemberBuyerAccountFindController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		MemberDAO memberDAO = new MemberDAO();
		
        String name = req.getParameter("name");
        String phone = req.getParameter("phone");
		
//        String findEmail = memberDAO.findBuyerByEmail(phone,name);
        
        
        
        return result;
    }
}
