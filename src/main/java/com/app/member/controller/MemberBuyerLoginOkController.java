package com.app.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.MemberDAO;
import com.app.vo.MemberVO;

public class MemberBuyerLoginOkController implements Action {

    @Override
    public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        Result result = new Result();
        MemberDAO memberDAO = new MemberDAO();
        MemberVO memberVO = new MemberVO();

        memberVO.setMemberEmail(req.getParameter("buyerEmail"));
        memberVO.setMemberPassword(req.getParameter("buyerPassword"));
        
		System.out.println(req.getParameter("buyerEmail"));
		System.out.println(req.getParameter("buyerPassword"));      
        
		memberDAO.selectBuyer(memberVO);
		
		result.setRedirect(true);
		result.setPath("../../../src/main/webapp/index.jsp");
		
        return result;
    }
}
