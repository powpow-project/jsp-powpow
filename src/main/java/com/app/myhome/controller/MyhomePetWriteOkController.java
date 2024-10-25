package com.app.myhome.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;

public class MyhomePetWriteOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();

		System.out.println("실행");
		System.out.println(req.getParameter("petKind"));
	      
	    result.setRedirect(true);
	    result.setPath("../myhome/pet-list.myhome");
	  
		return result;
	}

}
