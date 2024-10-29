package com.app.myhome.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;

public class MyhomeNotificationController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		 Result result = new Result();
		
	        // 결과 페이지 설정
	        result.setPath("../myhome/myhome-notification.jsp");
	        return result;
	    }
}
