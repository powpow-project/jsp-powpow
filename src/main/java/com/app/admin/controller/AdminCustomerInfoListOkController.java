package com.app.admin.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.MemberDAO;
import com.app.dto.MemberDTO;
import com.app.vo.MemberVO;

public class AdminCustomerInfoListOkController implements Action {

    @Override
    public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        Result result = new Result();
        MemberDAO memberDAO = new MemberDAO();
        MemberDTO memberDTO = new MemberDTO();
        
        memberDTO.setSearchKeyWord(req.getParameter("searchKeyword"));
        memberDTO.setMemberSms(req.getParameter("sms").charAt(0));
        memberDTO.setMemberEmailCheck(req.getParameter("email").charAt(0));
        
        List<MemberDTO> members = memberDAO.selectSearch(memberDTO);
        req.setAttribute("members", members);
        System.out.println("포워드 전 데이터");
        System.out.println(members);
        System.out.println("포워드 전 데이터");
        result.setPath("../admin/admin-customerInfo-list.jsp"); 
        return result; 
    }
}