package com.app.myhome.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.MemberDAO;
import com.app.dao.PetDAO;
import com.app.dto.PetDTO;
import com.app.vo.MemberVO;
import com.app.vo.PetVO;

public class MyhomePetWriteOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		PetDAO petDAO = new PetDAO();
		PetDTO petDTO = new PetDTO();
		PetVO petVO = new PetVO();
//		MemberVO memberVO = new MemberVO();
//		MemberDAO memberDAO = new MemberDAO();
//		HttpSession session = req.getSession();
		 
//		String directory = req.getServletContext().getRealPath("/assets/images/myhome");
//		int sizeLimit = 50*120*120;
		
		
//		String memberEmail = "jingeo@gmail.com";
//		Long memberId = memberDAO.selectMemberByEmail(memberEmail).getId();

		petVO.setPetBirth(req.getParameter("petBirth"));
		petVO.setPetBreed(req.getParameter("petBreed"));
		petVO.setPetGender(req.getParameter("petGender"));
		petVO.setPetImage(req.getParameter("petImage"));
		petVO.setPetKind(req.getParameter("petKind"));
		petVO.setPetName(req.getParameter("petName"));
		petVO.setPetNeuter(Boolean.parseBoolean(req.getParameter("petKind")));
		petVO.setPetVet(req.getParameter("petVet"));
		petVO.setPetWeight(Integer.parseInt(req.getParameter("petWeight")));
		
		petDAO.insertPet(petVO);
	      
	      result.setRedirect(true);
	      result.setPath(req.getContextPath() + "../pet-list.myhome?" + petDAO.selectPetKinds());
		
		return result;
	}

}
