package com.app.community;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Result;
import com.app.community.controller.CommunityAddPostOkController;
import com.app.community.controller.CommunityDeleteOkController;
import com.app.community.controller.CommunityListController;
import com.app.community.controller.CommunityMainController;
import com.app.community.controller.CommunityReadController;
import com.app.community.controller.CommunityUpdateController;
import com.app.community.controller.CommunityUpdateOkController;
import com.app.community.controller.CommunityWriteController;
import com.app.community.controller.CommunityWriteOkController;

public class CommunityFrontController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html; charset=utf-8");
		String target = req.getRequestURI().replace(req.getContextPath() + "/community/", "").split("\\.")[0];
		Result result = null;
		
		// 커뮤니티 메인 화면으로 이동
		if (target.equals("community-main")) {
			result = new CommunityMainController().execute(req, resp);
		// 헬스 커뮤니티 메인 화면으로 이동
		}else if(target.equals("community-health-main")) {
			result = new Result();
			result.setPath("../community/community-health-main.jsp");	
		// 게시물 등록 페이지로 이동 = 마이 포스트로 이동
		}else if(target.equals("community-my-post")) {
			result = new Result();
			result.setPath("../community/community-my-post");
		// 게시물 작성하기
		}else if(target.equals("community-add-post")) {
			result = new Result();
			result.setPath("../community/community-add-post");
		// 게시물 작성 완료
		}else if(target.equals("community-add-post-ok")) {
			result = new CommunityAddPostOkController().execute(req, resp);
		// 게시물 업데이트하기
		}else if(target.equals("community-post-update")) {
			result = new CommunityUpdateController().execute(req, resp);
			
		}else if(target.equals("update-ok")) {
			result = new CommunityUpdateOkController().execute(req, resp);
			
		}else if(target.equals("delete-ok")) {
			
		}else if(target.equals("list")) {
			result = new CommunityListController().execute(req, resp);
		}else if(target.equals("read")) {
			result = new CommunityReadController().execute(req, resp);
			result = new CommunityDeleteOkController().execute(req, resp);
		}else {
			result = new Result();
			result.setPath("../not-found.jsp");
		}
		
		if(result != null) {
			if(result.isRedirect()){
//				redirect
				resp.sendRedirect(result.getPath());
			}else {
//				forward
				req.getRequestDispatcher(result.getPath()).forward(req, resp);
			}
		}
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
