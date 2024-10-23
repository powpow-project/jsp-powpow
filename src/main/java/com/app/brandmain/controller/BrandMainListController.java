package com.app.brandmain.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.ProductDAO;
import com.app.vo.ProductVO;

public class BrandMainListController implements Action {
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		
		ProductDAO productDAO = new ProductDAO();
		List<ProductVO> products = productDAO.selectAll();
		Result result = new Result();		
		req.setAttribute("products", products);
		
		result.setPath("../cart/brand-main.jsp"); 
		
		return result;
	}

}
