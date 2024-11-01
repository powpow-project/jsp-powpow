package com.app.product.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.AdminDAO;
import com.app.dao.ProductDAO;
import com.app.dto.AdminBannerDTO;
import com.app.vo.ProductVO;

public class ProductHealthController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		ProductDAO productDAO = new ProductDAO();
		AdminDAO adminDAO = new AdminDAO();
		
		List<ProductVO> products = productDAO.selectAll();
		List<AdminBannerDTO> banners = adminDAO.selectAllBanners();

		req.setAttribute("products", products);
		req.setAttribute("banners", banners);

		result.setPath("../product/product-health-main.jsp");
		
		return result;
	}

}
