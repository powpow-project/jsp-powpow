package com.app.cart.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.CartDAO;
import com.app.dao.MemberDAO;
import com.app.dao.ProductDAO;
import com.app.vo.CartVO;

public class CartWriteOkController implements Action  {
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		CartVO cartVO = new CartVO();
		CartDAO cartDAO = new CartDAO();
		MemberDAO memberDAO = new MemberDAO();
		ProductDAO productDAO = new ProductDAO();
		HttpSession session = req.getSession();
		Result result = new Result();
		
//		회원정보 가져오기
		Long memberId = (Long) session.getAttribute("memberId");
		cartVO.setMemberId(memberId);
//		상품정보 가져오기
		Long productId = Long.parseLong(req.getParameter("productId"));
		cartVO.setProductId(productId);
//		장바구니에 추가
		cartDAO.insert(cartVO);
		
		result.setPath("../cart-write.jsp");
		result.setRedirect(true);
		return result;
	}

}
