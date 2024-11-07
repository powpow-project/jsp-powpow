package com.app.product.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONObject;

import com.app.Action;
import com.app.Result;
import com.app.dao.CartDAO;
import com.app.dao.MemberDAO;
import com.app.dto.CartDTO;

public class ProductCartListController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		HttpSession session = req.getSession();
		MemberDAO memberDAO = new MemberDAO();
		String buyerEmail = (String)session.getAttribute("buyerEmail");
		Long memberId = memberDAO.findBuyerByEmail(buyerEmail);
		CartDAO cartDAO = new CartDAO();
		
		List<CartDTO> cartItems = cartDAO.selectAll(memberId);
		
		JSONArray cartItemsJSON = new JSONArray();
		cartItems.stream().map(JSONObject::new).forEach(json -> cartItemsJSON.put(json));
		
		req.setAttribute("cartItemsJSON", cartItemsJSON);
		req.setAttribute("cartItems", cartItems);
		
		if(cartItems.size() == 0) {
			result.setPath("../product/product-cart-none.jsp");
			return result;
		}else if(buyerEmail == null) {
			result.setPath("../member/member-login.jsp");
			return result;
		}
		
		result.setPath("../product/product-cart-list.jsp");
		return result;
	}

}
