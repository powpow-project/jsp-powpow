package com.app.admin.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.AdminDAO;
import com.app.vo.AdminVO;

public class AdminUpdateController implements Action {

    @Override
    public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {

        Result result = new Result();
        AdminDAO adminDAO = new AdminDAO();
        AdminVO adminVO = new AdminVO();
        Long id = Long.parseLong(req.getParameter("adminId"));
        
      
       
        
//        req.setAttribute("adminNotice", adminNotice);
        result.setPath("update.admin");
                
        return result;
    }
}

