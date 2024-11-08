package com.app.myhome.controller;

import java.io.IOException;
import java.util.Optional;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.MemberDAO;
import com.app.dao.MyhomeDAO;
import com.app.dto.PetDTO;
import com.app.vo.PetVO;

public class MyhomePetUpdateController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
	    Result result = new Result();
	    PetVO petVO = new PetVO();
	    MyhomeDAO myhomeDAO = new MyhomeDAO();
	    MemberDAO memberDAO = new MemberDAO();
	    HttpSession session = req.getSession();
	    String memberEmail = (String)session.getAttribute("buyerEmail");
	    Long memberId = memberDAO.findBuyerByEmail(memberEmail);
	    Long petId = Long.parseLong(req.getParameter("petId"));
	    
	    petVO.setId(petId);
	    petVO.setMemberId(memberId);
	    	
//	    System.out.println(petVO);
	    
	    Optional<PetVO> pet = myhomeDAO.selectPetId(petVO);
	    req.setAttribute("pet",  pet.orElseThrow(() -> {
	    	throw new RuntimeException();
	    }));
	    
//	    업데이트 페이지
	    result.setPath("../myhome/myhome-pet-update.jsp"); 
	    return result;
    }
}







