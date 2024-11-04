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
import com.app.vo.PetVO;
import com.app.vo.ProductVO;

public class MyhomePetListController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		MemberDAO memberDAO = new MemberDAO();
		MyhomeDAO myhomeDAO = new MyhomeDAO();
		HttpSession session = req.getSession();
		Long memberid = memberDAO.findBuyerByEmail((String)session.getAttribute("buyerEmail"));
		
		List<PetVO> pets = myhomeDAO.selectPetAll(memberid);
		System.out.println(pets);
		req.setAttribute("pets", pets);
		
		result.setPath("../myhome/myhome-pet-list.jsp");
		return result;
	}

}
