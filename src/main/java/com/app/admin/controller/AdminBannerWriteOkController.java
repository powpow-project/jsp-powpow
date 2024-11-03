package com.app.admin.controller;

import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.AdminDAO;
import com.app.dto.AdminBannerDTO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class AdminBannerWriteOkController implements Action {

   @Override
   public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {

      AdminDAO adminDAO = new AdminDAO();
      AdminBannerDTO adminBannerDTO = new AdminBannerDTO();
      Result result = new Result();
      HttpSession session = req.getSession();
      String directory = req.getServletContext().getRealPath("/assets/images/admin");
      int sizeLimit = 10*500*500; // 100mb

      String adminEmail = (String) session.getAttribute("adminEmail");
      Long adminId = adminDAO.selectByAdminEmail(adminEmail).getId();

      
      
      // 디렉토리가 존재하지 않으면 생성
      File dir = new File(directory);
      if (!dir.exists()) {
         dir.mkdirs(); // 디렉토리 생성
      }

      try {
         // 파일 업로드 처리
         MultipartRequest multi = new MultipartRequest(req, directory, sizeLimit, "UTF-8",
               new DefaultFileRenamePolicy());

         // 업로드된 파일의 제목과 이름 가져오기
         String mainImage = multi.getFilesystemName("banner-image");
         String bannerTitle = multi.getParameter("banner-name");
         String bannerType = multi.getParameter("banner-type");
         String bannerStart = multi.getParameter("start-date");
         String bannerEnd = multi.getParameter("end-date");

         adminBannerDTO.setAdminId(adminId);
         adminBannerDTO.setAdminBannerTitle(bannerTitle);
         adminBannerDTO.setAdminBannerType(bannerType);
         adminBannerDTO.setAdminBannerStart(bannerStart);
         adminBannerDTO.setAdminBannerEnd(bannerEnd);

         // 파일이 성공적으로 업로드되었는지 확인
         if (mainImage != null) {
            adminBannerDTO.setAdminBannerImage(mainImage);

         } else {

         }
      } catch (Exception e) {
         e.printStackTrace(); // 예외 발생 시 스택 트레이스 출력
      }

      adminDAO.insertAdminBanner(adminBannerDTO);

      
      result.setPath("../admin/admin-banner-list.admin");
      result.setRedirect(true);

      return result;
   }
}
