package com.app.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Result;
import com.app.member.controller.MemberBuyerWriteController;
import com.app.member.controller.MemberBuyerWriteOkController;
import com.app.member.controller.MemberDeleteOkController;
import com.app.member.controller.MemberListController;
import com.app.member.controller.MemberSellerWriteController;
import com.app.member.controller.MemberSellerWriteOkController;
import com.app.member.controller.MemberUpdateController;
import com.app.member.controller.MemberUpdateOkController;

public class MemberFrontController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html; charset=utf-8");
		String target = req.getRequestURI().replace(req.getContextPath() + "/", "").split("\\.")[0];
		Result result = null;
		
		if(target.equals("buyer-write")) {
			result = new MemberBuyerWriteController().execute(req, resp);
		}else if(target.equals("buyer-write-ok")) {
			result = new MemberBuyerWriteOkController().execute(req, resp);
		}else if(target.equals("seller-write")) {
			result = new MemberSellerWriteController().execute(req, resp);
		}else if(target.equals("seller-write-ok")) {
			result = new MemberSellerWriteOkController().execute(req, resp);
		}else if(target.equals("list")) {
			result = new MemberListController().execute(req, resp);
		}else if(target.equals("update")) {
			result = new MemberUpdateController().execute(req, resp);
		}else if(target.equals("update-ok")) {
			result = new MemberUpdateOkController().execute(req, resp);
		}else if(target.equals("delete-ok")) {
			result = new MemberDeleteOkController().execute(req, resp);
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
