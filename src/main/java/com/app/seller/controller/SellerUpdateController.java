package com.app.seller.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;
import com.app.dao.ProductDAO;
import com.app.vo.ProductVO;
import com.oreilly.servlet.MultipartRequest;

public class SellerUpdateController implements Action {

   @Override
   public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
      Result result = new Result();
      ProductDAO productDAO = new ProductDAO();
      String directory =req.getServletContext().getRealPath("/assets/images/product");
      
      try {
      
	      MultipartRequest multi = new MultipartRequest(req, directory, "UTF-8");
	      
	      ProductVO product = productDAO.select(Long.parseLong(multi.getParameter("id"))).orElseThrow(()->{
	         throw new RuntimeException();
	      });
	      System.out.println(product);
	      req.setAttribute("product", product);
      } catch (Exception e) {
          e.printStackTrace(); // 예외 발생 시 스택 트레이스 출력
      }
      
      result.setPath("update.jsp");
      return result;
      
   }

}
