package com.app.seller.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.SellerDAO;

public class SellerSearchOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		String startDate = req.getParameter("start-date");
        String endDate = req.getParameter("end-date");
        HttpSession session = req.getSession();
        SellerDAO sellerDAO = new SellerDAO();
        
//      String sellerEmail = (String)session.getAttribute("sellerEmail");
        String sellerEmail = "abc123";
        Long sellerId = sellerDAO.selectBySellerEmail(sellerEmail).getId();
        
        req.setAttribute("startDate", startDate);
        req.setAttribute("endDate", endDate);
		
		result.setRedirect(true);
		result.setPath("../seller/seller-revenue-list.seller");
		
		return result;
	}

}
