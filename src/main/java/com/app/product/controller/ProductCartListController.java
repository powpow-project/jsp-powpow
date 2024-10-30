package com.app.product.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.CartDAO;
import com.app.dto.CartDTO;

public class ProductCartListController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		CartDAO cartDAO = new CartDAO();
		
		List<CartDTO> cartItems = cartDAO.selectAll();
		req.setAttribute("cartItems", cartItems);
		
		
		result.setPath("../product/product-cart-list.jsp");
		
		
		
		return result;
	}

}
