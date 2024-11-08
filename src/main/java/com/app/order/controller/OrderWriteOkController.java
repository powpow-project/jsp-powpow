package com.app.order.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.MemberDAO;
import com.app.dao.OrderDAO;
import com.app.dao.ProductDAO;
import com.app.vo.OrderVO;

public class OrderWriteOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		
		HttpSession session = req.getSession();
		ProductDAO productDAO = new ProductDAO();
		OrderDAO orderDAO = new OrderDAO();
		OrderVO orderVO = new OrderVO(); 
		MemberDAO memberDAO = new MemberDAO();
		
		
		Long productId = Long.parseLong(req.getParameter("productId"));
		Long memberId = Long.parseLong(req.getParameter("memberId"));
		int productCount = Integer.parseInt(req.getParameter("productCount"));
		
		String productCode = "";
		for(int i = 0; i < 12; i ++) {
			productCode += (char)(Math.floor(Math.random() * 25) + 65);
		}
		System.out.println(productCode);
		
        orderVO.setProductId(productId);
        orderVO.setMemberId(memberId);
        orderVO.setProductCount(productCount);
        orderVO.setOrderNumber(productCode);
        
//       상품 주문
        orderDAO.insert(orderVO);
		
//      상품 재고 카운트만큼
        orderVO.setProductCount((productCount * -1));
		orderVO.setProductId(productId);
		productDAO.updateStock(orderVO);
        
        result.setRedirect(true);
		result.setPath("../index.jsp");
		return result;
	}

}