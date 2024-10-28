package com.app.admin.controller;

import java.io.IOException;
import java.sql.Timestamp;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.AdminDAO;
import com.app.dto.AdminBannerDTO;

public class AdminBannerWriteOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {

		AdminDAO adminDAO = new AdminDAO();
		AdminBannerDTO adminBannerDTO = new AdminBannerDTO();
		Result result = new Result();
		HttpSession session = req.getSession();

		String adminEmail = (String) session.getAttribute("adminEmail");
		Long adminId = adminDAO.selectByAdminEmail(adminEmail).getId();

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

		if (bannerStart == null || bannerEnd == null) {
			resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "기간을 설정해 주세요.");
			return null;
		}

		try {
			// 날짜 형식 변경 (시간 추가)
			String bannerStartFormatted = bannerStart + " 00:00:00";
			String bannerEndFormatted = bannerEnd + " 23:59:59";

			// String을 Timestamp로 변환
			Timestamp startTimestamp = Timestamp.valueOf(bannerStartFormatted);
			Timestamp endTimestamp = Timestamp.valueOf(bannerEndFormatted);

			adminBannerDTO.setAdminId(adminId);
			adminBannerDTO.setAdminBannerTitle(bannerTitle);
			adminBannerDTO.setAdminBannerType(bannerType);
			adminBannerDTO.setAdminBannerImage(bannerImage);
			adminBannerDTO.setAdminBannerStart(startTimestamp);
			adminBannerDTO.setAdminBannerEnd(endTimestamp);

			adminDAO.insertAdminBanner(adminBannerDTO);

			result.setPath("../admin/admin-banner-list.admin");
			result.setRedirect(true);

		} catch (IllegalArgumentException e) {
			resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "유효하지 않은 날짜 형식입니다.");
			return null;
		}
		return result;
	}
}
