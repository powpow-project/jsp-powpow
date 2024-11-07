package com.app.product.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.ProductDAO;
import com.app.dto.ProductReviewDTO;
import com.app.vo.ProductVO;

public class ProductDetailController implements Action {

@Override
public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
    Result result = new Result();
    ProductDAO productDAO = new ProductDAO();
    
    Long productId = Long.parseLong(req.getParameter("productId"));
    productDAO.select(productId).ifPresent((product) -> {
    	String productCategory = product.getProductCategoryName();
    	String productType = product.getProductType();
    	List<ProductVO> products = productDAO.selectByCategory(productCategory);
    	List<ProductVO> recommendProducts = products.stream()
    			.filter(p -> !p.getProductType().equals("헬스+"))
    			.filter(p -> !p.getProductType().equals(productType))
    			.filter(p -> p.getId() != product.getId())
    			.map(p -> p).toList();
    	
    	req.setAttribute("product", product);
    	req.setAttribute("recommendProducts", recommendProducts);
    });
    
    List<ProductReviewDTO> reviewProducts = productDAO.selectReview(productId);
    System.out.println(reviewProducts);
    req.setAttribute("reviewProducts", reviewProducts);
    
    result.setPath("../product/product-detail.jsp?productId=" + productId);
    return result;
}
}
