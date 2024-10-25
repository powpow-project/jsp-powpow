package com.app.myhome.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.PetDAO;
import com.app.vo.PetVO;

public class MyhomePetUpdateController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
	    Result result = new Result();
	    PetDAO petDAO = new PetDAO();
	    PetVO petVO = new PetVO();
	    
	    // 파라미터 가져오기
        Long id = Long.parseLong(req.getParameter("id"));
        String petName = req.getParameter("petName");
        String petBirth = req.getParameter("petBirth");
        String petBreed = req.getParameter("petBreed");
	    String petKind = req.getParameter("petKind");
	    String petImage = req.getParameter("petImage");
	    String petGender = req.getParameter("petGender");
	    String petWeight = req.getParameter("petWeight");
	    String petVet = req.getParameter("petVet");
	    
	    
	    petDAO.updatePet(petVO);
	    
	    PetVO pet = petDAO.selectPetId(id).orElseThrow(() -> new RuntimeException("Pet not found with ID: " + id));
	    result.setPath("../src/webapp/myhome/pet.jsp"); // JSP 경로
	    
	    
	    return result;
    }
}







