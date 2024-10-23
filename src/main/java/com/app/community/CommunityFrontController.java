package com.app.community;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Result;
import com.app.community.controller.CommunityDeleteOkController;
import com.app.community.controller.CommunityListController;
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
		String target = req.getRequestURI().replace(req.getContextPath() + "/", "").split("\\.")[0];
		Result result = null;
		
		if(target.equals("write")) {
			result = new CommunityWriteController().execute(req, resp);
		}else if(target.equals("write-ok")) {
			result = new CommunityWriteOkController().execute(req, resp);
		}else if(target.equals("list")) {
			result = new CommunityListController().execute(req, resp);
		}else if(target.equals("read")) {
			result = new CommunityReadController().execute(req, resp);
		}else if(target.equals("update")) {
			result = new CommunityUpdateController().execute(req, resp);
		}else if(target.equals("update-ok")) {
			result = new CommunityUpdateOkController().execute(req, resp);
		}else if(target.equals("delete-ok")) {
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
