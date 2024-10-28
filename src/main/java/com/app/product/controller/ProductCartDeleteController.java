package com.app.product.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.CartDAO;
import com.app.dto.CartDTO;
import com.app.vo.CartVO;

public class ProductCartDeleteController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		  Result result = new Result();
	      CartDAO cartDAO = new CartDAO();

	      cartDAO.delete(Long.parseLong(req.getParameter("selectedIds")));
	      
	    result.setPath("../product/product-cart-list.product");
		result.setRedirect(true);
		
		return result;
	}

}
