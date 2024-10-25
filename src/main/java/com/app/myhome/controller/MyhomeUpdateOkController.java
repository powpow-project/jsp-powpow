package com.app.myhome.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.MemberDAO;
import com.app.dto.MemberDTO;
import com.app.vo.MemberVO;

public class MyhomeUpdateOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		MemberDAO memberDAO = new MemberDAO();
		MemberDTO memberDTO = new MemberDTO();
		MemberVO memberVO = new MemberVO();
		HttpSession session = req.getSession();
		
		 // 세션에서 현재 사용자의 ID를 가져오거나 요청 파라미터에서 가져옴
        Long id = Long.parseLong(req.getParameter("id"));
		
     // 멤버 정보 가져오기
        String email = "jingeo@gmail.com";
//        MemberVO member = memberDAO.selectBuyerByEmail(email).orElseThrow(() -> {
//            throw new RuntimeException("Member not found with email: " + email);
//        });
        
		
     // 업데이트 후 리다이렉트 경로 설정
        result.setRedirect(true);
        result.setPath(req.getContextPath() + "/read.member?id=" + id);

        return result;
	}

}
