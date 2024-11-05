package com.app.product.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.MemberDAO;
import com.app.dao.OrderDAO;
import com.app.dao.ProductDAO;
import com.app.dto.OrderDTO;
import com.app.vo.MemberVO;
import com.app.vo.OrderVO;
import com.app.vo.ProductVO;

public class ProductDetailController implements Action {

@Override
public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
    Result result = new Result();
    OrderDAO orderDAO = new OrderDAO();
    MemberDAO memberDAO = new MemberDAO();
    ProductDAO productDAO = new ProductDAO();

    HttpSession session = req.getSession();
    session.setAttribute("id", 1L); 
    Long memberId = (Long) session.getAttribute("id");

    try {
        Long productId = Long.parseLong(req.getParameter("productId"));
        System.out.println(productId);
        Long orderId = Long.parseLong(req.getParameter("orderId"));

            memberDAO.select(memberId).ifPresent((member) -> {
            	req.setAttribute("member", member);
            });
            
            productDAO.select(productId).ifPresent((product) -> {
            	req.setAttribute("product", product);
            });
            
            orderDAO.select(orderId).ifPresent((order) -> {
            	req.setAttribute("order", order);
            	result.setPath("../product-detail.jsp?productId=" + productId);
        });
    } catch (NumberFormatException e) {
        e.printStackTrace();
    }
    return result;
}
}
