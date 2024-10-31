package com.app.admin.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.app.Action;
import com.app.Result;
import com.app.dao.AdminDAO;
import com.app.dto.AdminBannerDTO;

public class AdminBannerUpdateOkController implements Action {

    @Override
    public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        Result result = new Result();
        AdminDAO adminDAO = new AdminDAO();
        AdminBannerDTO adminBannerDTO = new AdminBannerDTO();

        Long id = Long.parseLong(req.getParameter("id"));
        adminBannerDTO.setId(id);
        
        String bannerTitle = req.getParameter("banner-name"); 
        String bannerType = req.getParameter("banner-type"); 
        String bannerImage = req.getParameter("banner-image"); 
        String bannerStart = req.getParameter("start-date"); 
        String bannerEnd = req.getParameter("end-date");

        if (bannerTitle == null || bannerTitle.trim().isEmpty()) {
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "배너 제목을 입력해 주세요.");
            return null;
        }

        if (bannerType == null) {
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "배너 타입을 선택해 주세요.");
            return null;
        }

        if (bannerImage == null || bannerImage.trim().isEmpty()) {
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "배너 이미지를 선택해 주세요.");
            return null;
        }

        if (bannerStart == null || bannerStart.trim().isEmpty()) {
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "시작 날짜를 입력해 주세요.");
            return null;
        }

        if (bannerEnd == null || bannerEnd.trim().isEmpty()) {
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "종료 날짜를 입력해 주세요.");
            return null;
        }

        adminBannerDTO.setAdminBannerTitle(bannerTitle);
        adminBannerDTO.setAdminBannerType(bannerType); 
        adminBannerDTO.setAdminBannerImage(bannerImage);
        adminBannerDTO.setAdminBannerStart(bannerStart);
        adminBannerDTO.setAdminBannerEnd(bannerEnd); 

        adminDAO.updateAdminBanner(adminBannerDTO);

        result.setRedirect(true);
        result.setPath("../admin/admin-banner-list.admin");
        return result;
    }
}
