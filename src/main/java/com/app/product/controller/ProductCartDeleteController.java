package com.app.product.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.CartDAO;

public class ProductCartDeleteController implements Action {

    @Override
    public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		CartDAO cartDAO = new CartDAO();

		// 선택된 상품 ID 배열을 받아 삭제 처리
		String[] selectedIds = req.getParameterValues("selectedIds");

		if (selectedIds != null && selectedIds.length > 0) {
			// CartDAO 객체 생성
			for (String idStr : selectedIds) {
				Long productId = Long.parseLong(idStr);
				// 삭제 메서드 호출
				cartDAO.delete(productId);
			}
		}

		result.setRedirect(true);
		result.setPath("../product/product-cart-list.product");
		return result;
	}
}
