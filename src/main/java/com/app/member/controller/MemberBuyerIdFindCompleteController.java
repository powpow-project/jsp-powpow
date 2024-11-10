package com.app.member.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.MemberDAO;
import com.app.vo.MemberVO;

public class MemberBuyerIdFindCompleteController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();	
		MemberDAO memberDAO = new MemberDAO();
		
		List<MemberVO> members = MemberDAO.selectAll();
		
		req.setAttribute("members", members);
	    
		result.setPath("../member/member-buyer-id-find-complete.jsp");
		
		return result;
	}

}
