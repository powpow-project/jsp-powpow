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
        String[] selectedIds = req.getParameterValues("selectedIds"); // 요청에서 선택된 ID 배열 받기
        System.out.println("선택된 상품 IDs: " + Arrays.toString(selectedIds));

        if (selectedIds != null) {
            for (String id : selectedIds) {
                try {
                    Long productId = Long.valueOf(id); // 문자열을 Long으로 변환
                    System.out.println("삭제할 상품 ID: " + productId);
                    cartDAO.delete(productId); // DAO에서 삭제 메서드 호출
                } catch (NumberFormatException e) {
                    System.err.println("잘못된 상품 ID: " + id);
                }
            }
        } else {
            System.out.println("선택된 상품이 없습니다.");
        }
        
        
        result.setRedirect(true);
        result.setPath("../product/product-cart-list.product");
        return result;
    }
}
