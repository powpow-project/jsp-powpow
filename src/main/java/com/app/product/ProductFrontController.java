package com.app.product;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Result;
import com.app.seller.controller.SellerDeleteOkController;
import com.app.seller.controller.SellerListController;
import com.app.seller.controller.SellerUpdateController;
import com.app.seller.controller.SellerUpdateOkController;
import com.app.seller.controller.SellerWriteOkController;

public class ProductFrontController extends HttpServlet{

   @Override
   protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      req.setCharacterEncoding("UTF-8");
      resp.setContentType("text/html; charset=utf-8");
      String target = req.getRequestURI().replace(req.getContextPath() + "/product/", "").split("\\.")[0];
      Result result = null;
      
      if(target.equals("product-write")) {
    
      }else if(target.equals("product-write-ok")) {
    	  
      }else if(target.equals("product-list")) {
        
      }else if(target.equals("product-update")) {
         
      }else if(target.equals("product-update-ok")) {
         
      }else if(target.equals("delete-ok")) {
         
      }else {
        
      }
      
      if(result != null) {
         if(result.isRedirect()){
//            redirect
            resp.sendRedirect(result.getPath());
         }else {
//            forward
            req.getRequestDispatcher(result.getPath()).forward(req, resp);
         }
      }
   }
   @Override
   protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      doGet(req, resp);
   }
}
