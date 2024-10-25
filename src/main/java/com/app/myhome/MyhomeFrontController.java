package com.app.myhome;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Result;
import com.app.myhome.controller.MyhomeDeleteOkController;
import com.app.myhome.controller.MyhomeLikesListController;
import com.app.myhome.controller.MyhomeListController;
import com.app.myhome.controller.MyhomeNoPetController;
import com.app.myhome.controller.MyhomePasswordUpdateController;
import com.app.myhome.controller.MyhomePetDeleteOkController;
import com.app.myhome.controller.MyhomePetKindController;
import com.app.myhome.controller.MyhomePetListController;
import com.app.myhome.controller.MyhomePetUpdateController;
import com.app.myhome.controller.MyhomePetUpdateOkController;
import com.app.myhome.controller.MyhomePetWriteBirdController;
import com.app.myhome.controller.MyhomePetWriteCatController;
import com.app.myhome.controller.MyhomePetWriteDogController;
import com.app.myhome.controller.MyhomePetWriteFishController;
import com.app.myhome.controller.MyhomePetWriteOkController;
import com.app.myhome.controller.MyhomeShippingListController;
import com.app.myhome.controller.MyhomeUpdateController;
import com.app.myhome.controller.MyhomeUpdateOkController;

public class MyhomeFrontController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html; charset=utf-8");
		String target = req.getRequestURI().replace(req.getContextPath() + "/myhome/", "").split("\\.")[0];
		Result result = null;
		System.out.println(target);
		
		if(target.equals("list")) {
			result = new MyhomeListController().execute(req, resp);
		}else if(target.equals("update")) {
			result = new MyhomeUpdateController().execute(req, resp);
		}else if(target.equals("update-ok")) {
			result = new MyhomeUpdateOkController().execute(req, resp);
		}else if(target.equals("delete-ok")) {
			result = new MyhomeDeleteOkController().execute(req, resp);
		}else if(target.equals("pet-list")) {
			result = new MyhomePetListController().execute(req, resp);
		}else if(target.equals("pet-kind")) {
			result = new MyhomePetKindController().execute(req, resp);
		}else if(target.equals("pet-write-dog")) {
			result = new MyhomePetWriteDogController().execute(req, resp);
		}else if(target.equals("pet-write-cat")) {
			result = new MyhomePetWriteCatController().execute(req, resp);
		}else if(target.equals("pet-write-fish")) {
			result = new MyhomePetWriteFishController().execute(req, resp);
		}else if(target.equals("pet-write-bird")) {
			result = new MyhomePetWriteBirdController().execute(req, resp);
		}else if(target.equals("pet-write-ok")) {
			result = new MyhomePetWriteOkController().execute(req, resp);
		}else if(target.equals("pet-update")) {
			result = new MyhomePetUpdateController().execute(req, resp);
		}else if(target.equals("pet-update-ok")) {
			result = new MyhomePetUpdateOkController().execute(req, resp);
		}else if(target.equals("pet-delete-ok")) {
			result = new MyhomePetDeleteOkController().execute(req, resp);
		}else if(target.equals("no-pet")) {
			result = new MyhomeNoPetController().execute(req, resp);
		}else if(target.equals("shipping-list")) {
			result = new MyhomeShippingListController().execute(req, resp);
		}else if(target.equals("likes-list")) {
			result = new MyhomeLikesListController().execute(req, resp);
		}else if(target.equals("password-update")) {
			result = new MyhomePasswordUpdateController().execute(req, resp);
			
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
