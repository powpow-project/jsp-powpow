package com.app.order.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.CancleProductDAO;
import com.app.dao.OrderDAO;
import com.app.dao.ProductDAO;
import com.app.vo.CancleProductVO;
import com.app.vo.OrderVO;

public class OrderDeleteOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		CancleProductVO cancelProductVO = new CancleProductVO();
		CancleProductDAO cancleProductDAO = new CancleProductDAO();
		OrderVO orderVO = new OrderVO();
		OrderDAO orderDAO = new OrderDAO();
		ProductDAO productDAO = new ProductDAO();
		
		Long productId = Long.parseLong(req.getParameter("productId"));
		Long memberId = Long.parseLong(req.getParameter("buyerId"));
		int productCount = Integer.parseInt(req.getParameter("productCount"));
		Long orderId = Long.parseLong(req.getParameter("orderId"));
		
//		트랜잭션
//		캔슬 테이블 추가
		cancelProductVO.setProductId(productId);
		cancelProductVO.setMemberId(memberId);
		cancelProductVO.setCancleCount(productCount);
		cancleProductDAO.insert(cancelProductVO);
		
//		상품 재고 추가
		orderVO.setProductCount(productCount);
		orderVO.setProductId(productId);
		productDAO.updateStock(orderVO);
		
//		주문 테이블 삭제
		orderDAO.delete(orderId);
		
		result.setRedirect(true);
		result.setPath("../myhome/shipping-list.myhome");
		return result;
	}

}


