package com.app.myhome.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.PetDAO;

public class MyhomePetListController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		PetDAO petDAO = new PetDAO();
		
		
		
		if(/*펫이 null이면*/ true){
			result.setPath("../myhome/myhome-pet-list.jsp");
		}else {
			result.setPath("../myhome/myhome-no-pet.jsp");
		}
		
		return result;
	}

}
