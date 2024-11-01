package com.app.product.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.ProductDAO;
import com.app.vo.ProductVO;

public class ProductDogCotroller implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		ProductDAO productDAO = new ProductDAO();
		ProductVO productVO = new ProductVO();

		String productCategoryName = req.getParameter("productCategoryName");
		productVO.setProductCategoryName(req.getParameter("productCategoryName")); 
//	    productVO.setProductType(req.getParameter("productType")); 
	    
//	    System.out.println(req.getParameter("productCategoryName"));
	        
		List<ProductVO> product = productDAO.selectByCategory(productCategoryName);
		req.setAttribute("product", product);
		
		result.setPath("../product/product-dog.jsp?productCategoryName=" + productCategoryName);
		return result;
	}

}