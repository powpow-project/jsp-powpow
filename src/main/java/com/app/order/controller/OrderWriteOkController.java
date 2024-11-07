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
		
		HttpSession session = req.getSession();
		OrderDAO orderDAO = new OrderDAO();
		MemberDAO memberDAO = new MemberDAO();
		OrderVO orderVO = new OrderVO(); 
		
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
        
        orderDAO.insert(orderVO);
		
        result.setRedirect(true);
		result.setPath("../index.jsp");
		return result;
	}

}