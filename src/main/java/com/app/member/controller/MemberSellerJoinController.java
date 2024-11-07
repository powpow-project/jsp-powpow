package com.app.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;

public class MemberSellerJoinController implements Action {

   @Override
   public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
      Result result = new Result();
      String userPhoneNumber = req.getParameter("phone");
      
      req.setAttribute("userPhoneNumber", userPhoneNumber);
      
      System.out.println(userPhoneNumber);
      
      result.setPath("../member/member-seller-join.jsp");
      
      return result;
   }

}
