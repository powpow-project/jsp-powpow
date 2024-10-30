package com.app.product.controller;

import java.io.IOException;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.CartDAO;

public class ProductCartDeleteController implements Action {

    @Override
    public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
    	Result result = new Result();
        CartDAO cartDAO = new CartDAO();

        // 체크박스에서 선택된 상품 ID 가져오기
        String[] selectedIds = req.getParameterValues("selectedIds");

        if (selectedIds != null) {
            for (String id : selectedIds) {
                Long productId = Long.parseLong(id);
                cartDAO.deleteCart(productId);  
                System.out.println(productId);
            }
        }
        result.setRedirect(true);
        result.setPath("../product/product-cart-list.product");
        return result;
    }
}
