package com.app.product;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Result;
import com.app.product.controller.ProductBirdCotroller;
import com.app.product.controller.ProductCartCheckController;
import com.app.product.controller.ProductCartDeleteController;
import com.app.product.controller.ProductCartListController;
import com.app.product.controller.ProductCartWriteOkController;
import com.app.product.controller.ProductCatCotroller;
import com.app.product.controller.ProductDetailController;
import com.app.product.controller.ProductDogCotroller;
import com.app.product.controller.ProductFishCotroller;
import com.app.product.controller.ProductHealthController;
import com.app.product.controller.ProductLikeOkController;
import com.app.product.controller.ProductListController;
import com.app.product.controller.ProductSearchController;
import com.app.product.controller.ProductSellerController;
import com.app.product.controller.ProductSellerSearchController;

public class ProductFrontController extends HttpServlet{

   @Override
   protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      req.setCharacterEncoding("UTF-8");
      resp.setContentType("text/html; charset=utf-8");
      String target = req.getRequestURI().replace(req.getContextPath() + "/product/","").split("\\.")[0];
      System.out.println(target);
      Result result = null;
      
      if(target.equals("product-dog")) {
    	  result = new ProductDogCotroller().execute(req, resp);
      }else if(target.equals("product-cat")) {
    	  result = new ProductCatCotroller().execute(req, resp);
      }else if(target.equals("product-bird")) {
    	  result = new ProductBirdCotroller().execute(req, resp);
      }else if(target.equals("product-fish")) {
    	  result = new ProductFishCotroller().execute(req, resp);
      }else if(target.equals("cart-check")) {
    	  result = new ProductCartCheckController().execute(req, resp);
      }else if(target.equals("list")) {
    	  result = new ProductListController().execute(req, resp);
      }else if(target.equals("product-seller")) {
    	  result = new ProductSellerController().execute(req, resp);
      }else if(target.equals("search")) {
    	  result = new ProductSearchController().execute(req, resp);
      }else if(target.equals("product-health-main")) {
    	  result = new ProductHealthController().execute(req, resp); 
      }else if(target.equals("product-detail")) {
    	  result = new ProductDetailController().execute(req, resp);
      }else if(target.equals("product-cart-write-ok")) {
    	  result = new ProductCartWriteOkController().execute(req, resp);
      }else if(target.equals("product-cart-list")) {
    	  result = new ProductCartListController().execute(req, resp);
      }else if(target.equals("product-cart-delete")) {
    	  result = new ProductCartDeleteController().execute(req, resp);
      }else if(target.equals("product-like-ok")) {
    	  result = new ProductLikeOkController().execute(req, resp);
      }else if(target.equals("product-seller-search")) {
    	  result = new ProductSellerSearchController().execute(req, resp);
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
