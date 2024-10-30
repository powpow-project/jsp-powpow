package com.app.seller.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.CancleProductDAO;
import com.app.dao.OrderDAO;
import com.app.dao.SellerDAO;
import com.app.dto.CancleProductDTO;
import com.app.dto.OrderDTO;

public class SellerSearchOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
        
        String startDate = req.getParameter("startDate");
        String endDate = req.getParameter("endDate");
        
		
		result.setRedirect(true);
		result.setPath("seller-revenue-list.seller?startDate=" + startDate + "&endDate=" + endDate);
		
		return result;
	}

}
