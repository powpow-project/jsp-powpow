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
import com.app.dto.OrderDTO;
import com.app.vo.MemberVO;
import com.app.vo.OrderVO;
import com.app.vo.ProductVO;

public class OrderWriteOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		
		OrderDAO orderDAO = new OrderDAO();
		MemberDAO memberDAO = new MemberDAO();
		MemberVO memberVO = new MemberVO();
		ProductDAO productDAO = new ProductDAO();
		ProductVO productVO = new ProductVO();
		OrderDTO orderDTO = new OrderDTO();
		OrderVO orderVO = new OrderVO(); 
 		HttpSession session = req.getSession();
		
		Long memberId = Long.parseLong(String.valueOf(session.getAttribute("id")));
		
		
		Long productId = Long.parseLong(String.valueOf(productVO.getId()));
		Long orderId = Long.parseLong(String.valueOf(orderVO.getId()));
		int productCount = orderVO.getProductCount();		
 		
	    
        orderVO.setMemberId(memberId);
        orderVO.setProductId(productId);
        orderVO.setProductCount(productCount);
        
        
        orderDAO.insert(orderVO);
		
		result.setPath("../index.jsp");
		return result;
	}

}