package com.app.admin.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.app.Action;
import com.app.Result;
import com.app.dao.AdminDAO;
import com.app.dto.AdminBannerDTO;

public class AdminBannerUpdateController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		AdminDAO adminDAO = new AdminDAO();

		AdminBannerDTO adminBanner = adminDAO.selectAdminBanner(Long.parseLong(req.getParameter("id"))).orElseThrow(() -> {
			throw new RuntimeException();
		});

		req.setAttribute("adminBanner", adminBanner);
		result.setPath("admin-banner-update.jsp");

		return result;
	}
}
