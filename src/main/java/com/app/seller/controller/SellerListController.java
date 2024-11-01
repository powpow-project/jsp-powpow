package com.app.seller.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.ProductDAO;
import com.app.dao.SellerDAO;
import com.app.vo.ProductVO;

public class SellerListController implements Action {

   @Override
   public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
      Result result = new Result();
      ProductDAO productDAO = new ProductDAO();
      HttpSession session = req.getSession();
      SellerDAO sellerDAO = new SellerDAO();
      
      String sellerEmail = (String)session.getAttribute("sellerEmail");
      Long sellerId = sellerDAO.selectBySellerEmail(sellerEmail).getId();
   
      List<ProductVO> products = productDAO.selectAll();
      req.setAttribute("products", products);
      
      result.setPath("seller-list.jsp?sellerId=" + sellerId);
      
      return result;
   }

}
