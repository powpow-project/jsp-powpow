package com.app.myhome.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.PetDAO;
import com.app.vo.PetVO;

public class MyhomePetWriteBirdController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
//		Result result = new Result();
//		MemberDAO memberDAO = new MemberDAO();
//		
//		
//		result.setPath("../myhome/myhome-pet-write-bird.jsp");
//		return result;
		
		  Result result = new Result();
	        PetDAO petDAO = new PetDAO();

	        
	        String memberId = req.getParameter("memberId"); // Assuming memberId is passed
	        String petKind = req.getParameter("petKind"); // e.g., "bird"
	        String petName = req.getParameter("petName");
	        String petGender = req.getParameter("gender");
	        String petBreed = req.getParameter("petBreed");
	        String petBirth = req.getParameter("petBirth"); // Assuming this is formatted correctly
	        String petVet = req.getParameter("petVet");
	        double petWeight = Double.parseDouble(req.getParameter("petWeight"));
	        String petNeuter = req.getParameter("petNeuter"); // e.g., "Y" or "N"
	        
	       
	        String petImage = ""; 

	        // Create a new PetVO object
	        PetVO petVO = new PetVO();
	        petVO.setMemberId(Long.parseLong(memberId));
	        petVO.setPetImage(petImage);
	        petVO.setPetKind(petKind);
	        petVO.setPetName(petName);
	        petVO.setPetGender(petGender);
	        petVO.setPetBreed(petBreed);
	        petVO.setPetBirth(petBirth);
	        petVO.setPetVet(petVet);
	        petVO.setPetWeight(petWeight);
	        petVO.setPetNeuter(Boolean.parseBoolean(petNeuter));

	        petDAO.insertPet(petVO);

	        result.setPath("../myhome/myhome-pet-list.jsp"); 
	        return result;
	}

}
