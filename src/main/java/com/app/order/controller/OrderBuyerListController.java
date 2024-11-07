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

public class OrderBuyerListController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		OrderDAO orderDAO = new OrderDAO();
		OrderVO orderVO = new OrderVO(); 
		MemberDAO memberDAO = new MemberDAO();
		MemberVO memberVO = new MemberVO();
		ProductDAO productDAO = new ProductDAO();
		ProductVO productVO = new ProductVO();
		
 		HttpSession session = req.getSession();
 		Long memberId = memberDAO.findBuyerByEmail((String)session.getAttribute("buyerEmail"));
 		int quantity = Integer.parseInt(req.getParameter("quantity"));
 		Long productId = Long.parseLong(req.getParameter("productId"));
 		
// 		상품
 		productDAO.select(productId).ifPresent(product -> {
 			req.setAttribute("product", product);
 			req.setAttribute("quantity", quantity);
 		});
 		
// 		유저
 		memberDAO.select(memberId).ifPresent(member -> {
 			req.setAttribute("member", member);
 		});
		
		result.setPath("order-buyerlist.jsp");
		return result;
	}

}
