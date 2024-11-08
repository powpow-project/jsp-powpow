package com.app.product.controller;

import java.io.IOException;
import java.util.List;
import java.util.stream.Collector;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.ProductDAO;
import com.app.vo.ProductVO;

public class ProductCatCotroller implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		ProductDAO productDAO = new ProductDAO();
		ProductVO productVO = new ProductVO();

		String productCategoryName = req.getParameter("productCategoryName");
		productVO.setProductCategoryName(req.getParameter("productCategoryName")); 
	        
		List<ProductVO> products = productDAO.selectByCategory(productCategoryName);
		List<ProductVO> noHealthProducts = products.stream().filter(product -> !product.getProductType().equals("헬스+")).map(product -> product).toList();
		System.out.println(noHealthProducts);
		req.setAttribute("products", noHealthProducts);
		result.setPath("../product/product-new-cat.jsp?productCategoryName=" + productCategoryName);
		return result;
	}

}