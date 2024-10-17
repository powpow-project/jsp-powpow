package com.app.myhome;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Result;

public class MyhomeFrontController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html; charset=utf-8");
		String target = req.getRequestURI().replace(req.getContextPath() + "/", "").split("\\.")[0];
		Result result = null;
		
		if(target.equals("image")) {
			
		}else if(target.equals("image-ok")) {
			
		}else if(target.equals("edit")) {
			
		}else if(target.equals("edit-ok")) {
		
		}else {
//			전부 notFound 404
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
