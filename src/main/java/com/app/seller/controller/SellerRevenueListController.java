package com.app.seller.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.CancleProductDAO;
import com.app.dao.OrderDAO;
import com.app.dao.SellerDAO;

public class SellerRevenueListController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		SellerDAO sellerDAO = new SellerDAO();
		OrderDAO orderDAO = new OrderDAO();
		CancleProductDAO cancleProductDAO = new CancleProductDAO();
		HttpSession session = req.getSession();
		
		
//      String sellerEmail = (String)session.getAttribute("sellerEmail");
		String sellerEmail = "abc123";
		Long sellerId = sellerDAO.selectBySellerEmail(sellerEmail).getId();
		
		
		req.setAttribute("revenueListForSeller", orderDAO.selectByDate(sellerId));
		req.setAttribute("revenueListForSeller", cancleProductDAO.selectByDate(sellerId));
		result.setPath("seller-revenue-list.jsp");
		
		return result;
	}

}
