package com.app.seller.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
		
		String startDate = req.getParameter("startDate");
		String endDate = req.getParameter("endDate");

		List<OrderDTO> orderList = orderDAO.selectByDate(sellerId, startDate, endDate);
		List<CancleProductDTO> cancleList = cancleProductDAO.selectByDate(sellerId, startDate, endDate);
		
		Map<String, Object> dataMap = new HashMap<>();
			dataMap.put("orderListForSeller", orderList);
			dataMap.put("cancleListForSeller", cancleList);
		
		int totalOrderCount = 0;
		int totalOrderPrice = 0;
		int totalCancleCount = 0;
		int totalCanclePrice = 0;
		int totalSales = 0;
		String orderDate = "";
		String cancleDate = "";
		
		for (OrderDTO order : orderList) {
		    totalOrderCount += order.getOrderTotalCount();
		    totalOrderPrice += order.getOrderTotalPrice();
		    orderDate = order.getOrderDate();
		}
		for (CancleProductDTO cancle : cancleList) {
		    totalCancleCount += cancle.getCancleTotalCount();
		    totalCanclePrice += cancle.getCancleTotalPrice();
		    cancleDate = cancle.getCancleProductDate();
		}
		
		totalSales = totalOrderPrice - totalCanclePrice;
		
		req.setAttribute("sellerId", sellerId);
        req.setAttribute("startDate", startDate);
        req.setAttribute("endDate", endDate);
        
		req.setAttribute("totalOrderCount", totalOrderCount);
		req.setAttribute("totalOrderPrice", totalOrderPrice);
		req.setAttribute("totalCancleCount", totalCancleCount);
		req.setAttribute("totalCanclePrice", totalCanclePrice);
		req.setAttribute("totalSales", totalSales);
		
		req.setAttribute("orderDate", orderDate);
		req.setAttribute("cancleDate", cancleDate);
		req.setAttribute("dataMap", dataMap);
		
		
		result.setPath("seller-revenue-list.jsp");
		return result;
	}

}
