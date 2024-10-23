package com.app.product;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Result;
import com.app.product.controller.ProductCartDeleteController;
import com.app.product.controller.ProductCartListController;
import com.app.product.controller.ProductCartWriteOkController;
import com.app.product.controller.ProductDetailController;
import com.app.product.controller.ProductHealthController;
import com.app.product.controller.ProductListController;
import com.app.product.controller.ProductSearchController;
import com.app.product.controller.ProductSellerController;

public class ProductFrontController extends HttpServlet{

   @Override
   protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      req.setCharacterEncoding("UTF-8");
      resp.setContentType("text/html; charset=utf-8");
      String target = req.getRequestURI().replace(req.getContextPath() + "/product/", "").split("\\.")[0];
      Result result = null;
      
      if(target.equals("list")) {
    	  result = new ProductListController().execute(req, resp);
      }else if(target.equals("seller")) {
    	  result = new ProductSellerController().execute(req, resp);
      }else if(target.equals("search")) {
    	  result = new ProductSearchController().execute(req, resp);
      }else if(target.equals("health")) {
    	  result = new ProductHealthController().execute(req, resp); 
      }else if(target.equals("detail")) {
    	  result = new ProductDetailController().execute(req, resp);
      }else if(target.equals("cart-list")) {
    	  result = new ProductCartListController().execute(req, resp);
      }else if(target.equals("cart-write-ok")) {
    	  result = new ProductCartWriteOkController().execute(req, resp);
      }else if(target.equals("cart-delete")) {
    	  result = new ProductCartDeleteController().execute(req, resp);
      }else {
		result = new Result();
		result.setPath("../not-found.jsp");
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
