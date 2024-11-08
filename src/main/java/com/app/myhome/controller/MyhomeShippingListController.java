package com.app.myhome.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.MemberDAO;
import com.app.dao.OrderDAO;
import com.app.dto.OrderDTO;
import com.app.vo.MemberVO;

public class MyhomeShippingListController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		OrderDAO orderDAO = new OrderDAO();
		OrderDTO orderDTO = new OrderDTO();
		MemberVO membrVO = new MemberVO();
		MemberDAO memberDAO = new MemberDAO();
		HttpSession session = req.getSession();
		
//		session.getId();
		String memberEmail = (String)session.getAttribute("buyerEmail");
		Long memberId = memberDAO.findBuyerByEmail(memberEmail);
		
//		멤버
		memberDAO.select(memberId).ifPresent((member) -> {
			req.setAttribute("member", member);
		});
		
//		주문리스트
		List<OrderDTO> orderProducts = orderDAO.selectMyOrder(memberId);
		req.setAttribute("orderProducts", orderProducts);
		System.out.println(orderProducts);
		
		result.setPath("../myhome/myhome-shipping-list.jsp");

		return result;
	}

}
