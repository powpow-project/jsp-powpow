package com.app.myhome.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.PetDAO;
import com.app.vo.PetVO;

public class MyhomePetWriteDogController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		PetVO petVO = new PetVO();
		PetDAO petDAO = new PetDAO();
		
		
		result.setPath("../myhome/myhome-pet-write-dog.jsp");
		return result;
	}

}
