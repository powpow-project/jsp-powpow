package com.app.myhome.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.MyhomeDAO;
import com.app.vo.MemberVO;

public class MyhomeNotificationController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		 Result result = new Result();
		
	        // 결과 페이지 설정
	        result.setPath("../myhome/myhome-notification.jsp");
	        return result;
	    }
}
