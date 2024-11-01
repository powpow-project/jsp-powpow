package com.app.myhome.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.MemberDAO;
import com.app.vo.PetVO;

public class MyhomePetUpdateOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		PetVO petVO = new PetVO();
		MemberDAO memberDAO = new MemberDAO();
		HttpSession session = req.getSession();
		
		String memberEmail = (String)session.getAttribute("memberEmail");
//		Long memberId = memberDAO.selectByEmail(memberEmail).getId();
		
		petVO.setPetName(req.getParameter("petName"));
		petVO.setPetBirth(req.getParameter("petBirth"));
		petVO.setPetBreed(req.getParameter("petBreed"));
		petVO.setPetGender(req.getParameter("petGender"));
		petVO.setPetImage(req.getParameter("petImage"));
		petVO.setPetKind(req.getParameter("petKind"));
		petVO.setPetNeuter(Boolean.parseBoolean(req.getParameter("petNeuter")));
		petVO.setPetVet(req.getParameter("petVet"));
		petVO.setPetWeight(Integer.parseInt(req.getParameter("petWeight")));
		
		result.setPath("../myhome/myhome-pet-list.jsp");
		
		return result;
	}

}
