/*
 * package com.app.seller.controller;
 * 
 * import java.io.IOException;
 * 
 * import javax.servlet.ServletException; import
 * javax.servlet.http.HttpServletRequest; import
 * javax.servlet.http.HttpServletResponse;
 * 
 * import com.app.Action; import com.app.Result;
 * 
 * public class SellerSearchOkController implements Action {
 * 
 * @Override public Result execute(HttpServletRequest req, HttpServletResponse
 * resp) throws IOException, ServletException { Result result = new Result();
 * 
 * String startDate = req.getParameter("start-date"); String endDate =
 * req.getParameter("end-date");
 * 
 * req.setAttribute("startDate", startDate); req.setAttribute("endDate",
 * endDate);
 * 
 * result.setRedirect(true);
 * result.setPath("../seller/seller-revenue-list.seller");
 * 
 * return result; }
 * 
 * }
 */
