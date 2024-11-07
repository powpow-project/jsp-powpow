package com.app.product.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.LikeDAO;
import com.app.dao.MemberDAO;
import com.app.vo.LikeVO;

public class ProductLikeOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		MemberDAO memberDAO = new MemberDAO();
		LikeDAO likeDAO = new LikeDAO();
		LikeVO likeVO = new LikeVO();
		HttpSession session = req.getSession();
		
		Long productId = Long.parseLong(req.getParameter("productId"));
		Long memberId = memberDAO.findBuyerByEmail((String)session.getAttribute("buyerEmail"));
		
		likeVO.setMemberId(memberId);
		likeVO.setProductId(productId);
		likeDAO.insertProductLike(likeVO);
		
		result.setRedirect(true);
		result.setPath("../product/product-health-main.product");
		return result;
	}

}
