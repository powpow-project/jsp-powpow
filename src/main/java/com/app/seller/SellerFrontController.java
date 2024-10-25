package com.app.seller;

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

public class SellerFrontController extends HttpServlet{
   @Override
   protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      req.setCharacterEncoding("UTF-8");
      resp.setContentType("text/html; charset=utf-8");
      String target = req.getRequestURI().replace(req.getContextPath() +"/seller/", "").split("\\.")[0];
      Result result = null;

      System.out.println(target);
      
      if(target.equals("seller-write")) {
           result = new Result();
            result.setPath("../seller/seller-write.jsp");
      }else if(target.equals("seller-write-ok")) {
            result = new SellerWriteOkController().execute(req, resp);
      }else if(target.equals("seller-list")) {
          result = new SellerListController().execute(req, resp);
      }else if(target.equals("seller-update")) {
         result = new SellerUpdateController().execute(req, resp);
      }else if(target.equals("seller-update-ok")) {
         result = new SellerUpdateOkController().execute(req, resp);
      }else if(target.equals("seller-delete-ok")) {
         result = new SellerDeleteOkController().execute(req, resp);
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
