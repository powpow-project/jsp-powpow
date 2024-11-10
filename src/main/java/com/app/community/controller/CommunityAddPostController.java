package com.app.community.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.app.Action;
import com.app.Result;
import com.app.dao.ProductDAO;
import com.app.vo.ProductVO;

public class CommunityAddPostController implements Action{
	
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		
		ProductDAO productDAO = new ProductDAO();
		List<ProductVO> productsAll = productDAO.selectAll();
		JSONArray products = new JSONArray();
		productsAll.stream().map(JSONObject::new).forEach((json) -> { products.put(json); });
		req.setAttribute("products", products);
		result.setPath("../community/community-add-post.jsp");
		return result;
	}

}






