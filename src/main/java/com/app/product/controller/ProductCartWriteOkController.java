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
import com.app.vo.CartVO;
import com.app.vo.MemberVO;

public class ProductCartWriteOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		CartVO cartVO = new CartVO();
		CartDAO cartDAO = new CartDAO();
		MemberDAO memberDAO = new MemberDAO();
		MemberVO memberVO = new MemberVO();
		HttpSession session = req.getSession();
		
//		회원정보 가져오기
		String memberEmail = (String)session.getAttribute("memberEmail");
		cartVO.setMemberId(1L);

//		상품정보 가져오기	
		Long productId = Long.parseLong(req.getParameter("productId"));
		cartVO.setProductId(productId);
		
		
//		장바구니에 추가
		cartDAO.insert(cartVO);
		
		
		result.setPath("../product/product-health-main.product");
		result.setRedirect(true);
		
		return result;
	}

}
