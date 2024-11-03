package com.app.myhome.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.MemberDAO;
import com.app.dao.MyhomeDAO;
import com.app.vo.MemberVO;
import com.app.vo.PetVO;

public class MyhomePetDeleteOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
	    MemberDAO memberDAO = new MemberDAO();
		MemberVO memberVO = new MemberVO();
		MyhomeDAO myhomeDAO = new MyhomeDAO();
		PetVO petVO = new PetVO();
		HttpSession session = req.getSession();

		String memberEmail = (String) session.getAttribute("buyerEmail");
//			System.out.println(memberEmail);
		Long memberId = 1L;
	 
		//업데이트 
//		myhomeDAO.deletePet(petVO);

		
		result.setPath("../myhome/myhome-pet-list.jsp");
		return null;
	}

}
