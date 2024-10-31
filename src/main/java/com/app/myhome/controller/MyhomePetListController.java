package com.app.myhome.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.MemberDAO;
import com.app.dao.MyhomeDAO;
import com.app.dao.PetDAO;
import com.app.vo.PetVO;
import com.app.vo.ProductVO;

public class MyhomePetListController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		MemberDAO memberDAO = new MemberDAO();
		MyhomeDAO myhomeDAO = new MyhomeDAO();
		PetDAO petDAO = new PetDAO();
		PetVO petVO = new PetVO();
		HttpSession session = req.getSession();
//		
//		session.setAttribute("id", 1L);
//	    Long memberId = Long.parseLong(String.valueOf(session.getAttribute("id")));
//	    
//	    List<PetVO> pets = petDAO.selectAll();
//	      req.setAttribute("pets", pets);
		
		
		if(/*펫이 null이면*/ true){
			result.setPath("../myhome/myhome-pet-list.jsp");
		}else {
			result.setPath("../myhome/myhome-no-pet.jsp");
		}
		
		return result;
	}

}
