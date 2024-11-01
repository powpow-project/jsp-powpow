package com.app.seller.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.ProductDAO;
import com.app.dao.SellerDAO;

public class SellerDeleteOkController implements Action {

   @Override
   public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
      Result result = new Result();
      ProductDAO productDAO = new ProductDAO();
      HttpSession session = req.getSession();
      SellerDAO sellerDAO = new SellerDAO();
      
      String sellerEmail = (String)session.getAttribute("sellerEmail");
      Long sellerId = sellerDAO.selectBySellerEmail(sellerEmail).getId();
      
      productDAO.delete(Long.parseLong(req.getParameter("id")));
      
      result.setRedirect(true);
      result.setPath("seller-list.seller");
      
      return result;
   }

}
