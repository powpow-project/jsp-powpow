package com.app.product.controller;

import java.io.IOException;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.CartDAO;
import com.app.dao.MemberDAO;
import com.app.dao.ProductDAO;
import com.app.vo.CartVO;

public class ProductCartDeleteController implements Action {

    @Override
    public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        Result result = new Result();
//        CartDAO cartDAO = new CartDAO();
//
//        // 선택된 상품 ID 배열을 받아 삭제 처리
//        String[] selectedIds = req.getParameterValues("selectedIds");
//        if (selectedIds != null) {
//        }
        CartDAO cartDAO = new CartDAO();
        ProductDAO productDAO = new ProductDAO();
        MemberDAO memberDAO = new MemberDAO();
        String[] cartIds = req.getParameterValues("cartIds");
        String[] productIds = req.getParameterValues("productIds");
        String[] memberIds = req.getParameterValues("memberIds");
        
        for(int i = 0; i < cartIds.length; i++) {
        	CartVO cartVO = new CartVO();
        	Long cartId = Long.parseLong(cartIds[i]);
        	Long productId = Long.parseLong(productIds[i]);
        }
        
        
        
        
        
        
        result.setRedirect(true);
        result.setPath("../product/product-cart-list.product");
        return result;
    }
}
