package com.app.admin.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.SellerDAO;
import com.app.dto.SellerDTO;

public class AdminSellerInfoListController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		
		Result result = new Result();
		SellerDAO sellerDAO = new SellerDAO();
		
		List<SellerDTO> sellers = sellerDAO.selectAllSellers();
		req.setAttribute("sellers", sellers);
		
		System.out.println(sellers);
		
	    result.setPath("admin-sellerInfo-list.jsp"); 
		return result;
	}
}

