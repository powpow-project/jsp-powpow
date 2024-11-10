package com.app.myhome.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.MemberDAO;

public class MyhomeDeleteOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		MemberDAO memberDAO = new MemberDAO();
		String cancel = req.getParameter("delete");
		
			if(/*탈퇴 확인한다면*/ cancel != null && cancel.equals("true")){
				result.setPath("../myhome/myhome-delete-complete.jsp");
			}else {
				result.setPath("../myhome/myhome-delete-ok.jsp");
			}
//		
		result.setPath("../myhome/myhome-delete-complete.jsp");
		return result;
	}

}
