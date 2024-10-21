package com.app.product.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.ProductDAO;
import com.app.vo.ProductVO;

public class ProductWriteOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		ProductVO productVO = new ProductVO();
		ProductDAO productDAO = new ProductDAO();

		int randomCode = (int) (Math.random() * 900000) + 100000;
		
		productVO.setProductName(req.getParameter("productName"));
		productVO.setProductPrice(Integer.parseInt(req.getParameter("productPrice")));
		productVO.setProductStock(Integer.parseInt(req.getParameter("productStock")));
		productVO.setProductType(req.getParameter("productType"));
		productVO.setProductCode(randomCode);
		
		
		productDAO.insertToList(productVO);
		
		result.setRedirect(true);
		result.setPath(req.getContextPath() + "/product-list.product");
		
		return result;
	}

}
