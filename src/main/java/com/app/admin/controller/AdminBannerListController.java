package com.app.admin.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.AdminDAO;
import com.app.dto.AdminBannerDTO;

public class AdminBannerListController implements Action {

    @Override
    public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        
        Result result = new Result();
        AdminDAO adminDAO = new AdminDAO();
        
        List<AdminBannerDTO> adminBannerList = adminDAO.selectAllBanners();
        
        req.setAttribute("adminBannerList", adminBannerList);
        System.out.println(adminBannerList);
        
        result.setPath("../admin/admin-banner-list.jsp");
        return result;
    }
}
