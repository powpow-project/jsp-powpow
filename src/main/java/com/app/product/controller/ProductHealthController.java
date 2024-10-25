package com.app.product.controller;

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
import com.app.dao.ProductDAO;
import com.app.vo.OrderVO;
import com.app.vo.ProductVO;

public class ProductHealthController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		
		ProductDAO productDAO = new ProductDAO();
		List<ProductVO> products = productDAO.selectAll();

		req.setAttribute("products", products);

		result.setPath("../product/product-health-main.jsp");
		
		return result;
	}

}
