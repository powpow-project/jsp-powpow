package com.app.myhome.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.PetDAO;
import com.app.vo.PetVO;

public class MyhomePasswordUpdateController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
	    Result result = new Result();
	 
	    
	    result.setPath("../myhome/myhome-password-update.jsp"); // JSP 경로
	    
	    
	    return result;
    }
}







