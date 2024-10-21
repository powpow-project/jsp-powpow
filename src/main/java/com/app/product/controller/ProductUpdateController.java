package com.app.product.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.ProductDAO;
import com.app.vo.ProductVO;

public class ProductUpdateController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		ProductDAO productDAO = new ProductDAO();
		
		ProductVO product = productDAO.select(Long.parseLong(req.getParameter("id"))).orElseThrow(()->{
			throw new RuntimeException();
		});
		
		req.setAttribute("product", product);
		result.setPath("product-update.jsp");
		
		return result;
	}

}
