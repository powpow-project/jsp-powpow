package com.app.order.controller;

import java.io.IOException;
import java.util.Optional;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.MemberDAO;
import com.app.dao.OrderDAO;
import com.app.dao.ProductDAO;
import com.app.dto.OrderDTO;
import com.app.vo.MemberVO;
import com.app.vo.OrderVO;
import com.app.vo.ProductVO;

public class OrderBuyerListController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		OrderDAO orderDAO = new OrderDAO();
		MemberDAO memberDAO = new MemberDAO();
		MemberVO memberVO = new MemberVO();
		ProductDAO productDAO = new ProductDAO();
		ProductVO productVO = new ProductVO();
		OrderDTO orderDTO = new OrderDTO();
 		HttpSession session = req.getSession();
		
		session.setAttribute("id", 2L);
		Long memberId = Long.parseLong(String.valueOf(session.getAttribute("id")));
		
		Long productId = 21L;
		
		Long orderId = 1L;
		
	    memberDAO.select(memberId).ifPresent((member) -> {
	    	req.setAttribute("member", member);
	    });
	    
	    productDAO.select(productId).ifPresent((product) -> {
	    	req.setAttribute("product", product);
	    });
	    
	    orderDAO.select(orderId).ifPresent((order) -> {
	    	req.setAttribute("order", order);
	    });
	    
	    
	    OrderVO orderVO = new OrderVO();
        orderVO.setMemberId(memberId);
        orderVO.setProductId(productId);
//        orderVO.setProductCount(productCount);
        orderVO.setProductCount(2);
        orderVO.setOrderNumber(1);
        orderDTO.setTotalPrice(productVO.getProductPrice() * orderVO.getProductCount());
	    
	    
	    
	    orderDAO.insert(orderVO);
	        
		result.setPath("order-buyerlist.jsp");
		return result;
	}

}
