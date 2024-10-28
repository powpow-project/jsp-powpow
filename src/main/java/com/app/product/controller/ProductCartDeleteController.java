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

         // 선택된 상품 ID 배열을 받아 삭제 처리
         String[] selectedIds = req.getParameterValues("selectedIds");
         System.out.println("선택된 상품 IDs: " + Arrays.toString(selectedIds));
         
         if (selectedIds != null) {
             for (String idStr : selectedIds) {
                 Long id = Long.valueOf(idStr);
                 cartDAO.delete(id); // 장바구니에서 삭제
             }
         }
        
        result.setRedirect(true);
        result.setPath("../product/product-cart-list.product");
        return result;
    }
}
