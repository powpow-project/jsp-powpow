package com.app.product.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.CartDAO;
import com.app.dao.MemberDAO;

public class ProductCartCheckController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		CartDAO cartDAO = new CartDAO();
		HttpSession session = req.getSession();
		MemberDAO memberDAO = new MemberDAO();

		// 회원 이메일 가져오기
		String memberEmail = (String) session.getAttribute("memberEmail");
		Long memberId = memberDAO.findBuyerByEmail(memberEmail);
		
		// 회원 이메일이 null인 경우 처리
		if (memberId == null) {
			result.setPath("../product/product-cart-none.jsp"); // 회원 이메일이 없을 경우 장바구니가 비어있다고 간주

			result.setRedirect(true);
			return result;
		}

		// 장바구니에 상품이 있는지 확인
		if (cartDAO.cartCount(memberEmail) > 0) {
			result.setPath("../product/product-cart-list.product"); // 장바구니에 상품이 있을 경우
		} else {
			result.setPath("../product/product-cart-none.jsp"); // 장바구니가 비어 있을 경우
		}

		result.setRedirect(true);

		return result;
	}

}
