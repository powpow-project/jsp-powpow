package com.app.myhome.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.PetDAO;
import com.app.dto.PetDTO;
import com.app.vo.PetVO;

public class MyhomePetKindController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
//		PetDAO petDAO = new PetDAO();
//		PetDTO petDTO = new PetDTO();
//		PetVO petVO = new PetVO();
		
		result.setPath("../myhome/myhome-pet-kind.jsp");
		return result;
	}

}
