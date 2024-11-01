package com.app.admin.controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.MemberDAO;
import com.app.vo.MemberVO;

public class AdminCustomerInfoListController implements Action {

    @Override
    public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        Result result = new Result();
        MemberDAO memberDAO = new MemberDAO();

        List<MemberVO> members = memberDAO.selectAllMembers();
        req.setAttribute("members", members);

        result.setPath("../admin/admin-customerInfo-list.jsp"); 
        return result; 
    }
}