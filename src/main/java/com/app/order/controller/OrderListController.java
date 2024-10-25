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
import com.app.vo.MemberVO;
import com.app.vo.OrderVO;

public class OrderListController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		OrderDAO orderDAO = new OrderDAO();
		MemberDAO memberDAO = new MemberDAO();
		MemberVO memberVO = new MemberVO();
		ProductDAO productDAO = new ProductDAO();
//		ProductDAO productDAO = new ProductDAO();
		HttpSession session = req.getSession();
		
		Long memberId = memberVO.getId();
		
        // ProductVO 리스트를 가져와서 JSP로 전달
//		Optional<ProductVO> products = productDAO.select(Long.parseLong(req.getParameter("productId")));
//        req.setAttribute("products", products);
        
        // ProductVO 리스트를 가져와서 JSP로 전달
		
        try {
			Optional<MemberVO> members = memberDAO.select(Long.parseLong(req.getParameter("id")));
			req.setAttribute("members", members);
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
       
		result.setPath("list.order.jsp");
//		result.setPath("write-ok.jsp");
		return result;
	}

}
