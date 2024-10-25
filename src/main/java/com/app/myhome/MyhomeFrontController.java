package com.app.myhome;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Result;
import com.app.myhome.controller.MyhomeDeleteController;
import com.app.myhome.controller.MyhomeListController;
import com.app.myhome.controller.MyhomePetDeleteController;
import com.app.myhome.controller.MyhomePetUpdateController;
import com.app.myhome.controller.MyhomePetUpdateOkController;
import com.app.myhome.controller.MyhomePetWriteController;
import com.app.myhome.controller.MyhomePetWriteOkController;
import com.app.myhome.controller.MyhomeUpdateController;
import com.app.myhome.controller.MyhomeUpdateOkController;

public class MyhomeFrontController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html; charset=utf-8");
		String target = req.getRequestURI().replace(req.getContextPath() + "/myhome/", "").split("\\.")[0];
		Result result = null;
		
		if(target.equals("list")) {
//			result = new MyhomeListController().execute(req, resp);
			result = new Result();
			result.setPath("../myhome/list.jsp");
		}else if(target.equals("update")) {
			result = new MyhomeUpdateController().execute(req, resp);
		}else if(target.equals("update-ok")) {
			result = new MyhomeUpdateOkController().execute(req, resp);
		}else if(target.equals("delete")) {
			result = new MyhomeDeleteController().execute(req, resp);
		}else if(target.equals("pet-write")) {
			result = new Result();
			result.setPath("../myhome/no-pet.jsp");
//			result = new MyhomePetWriteController().execute(req, resp);
		}else if(target.equals("pet-write-ok")) {
			result = new MyhomePetWriteOkController().execute(req, resp);
		}else if(target.equals("pet-update")) {
			result = new MyhomePetUpdateController().execute(req, resp);
		}else if(target.equals("pet-update-ok")) {
			result = new MyhomePetUpdateOkController().execute(req, resp);
		}else if(target.equals("pet-delete")) {
			result = new MyhomePetDeleteController().execute(req, resp);
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
