package com.app.order.controller;

import java.io.IOException;
import java.util.Optional;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.MemberDAO;
import com.app.dao.OrderDAO;
import com.app.dao.ProductDAO;
import com.app.vo.MemberVO;
import com.app.vo.OrderVO;

public class OrderBuyerListController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		OrderDAO orderDAO = new OrderDAO();
		MemberDAO memberDAO = new MemberDAO();
		MemberVO memberVO = new MemberVO();
		ProductDAO productDAO = new ProductDAO();
//		ProductDAO productDAO = new ProductDAO();
		HttpSession session = req.getSession();
		
		session.setAttribute("id", 1L);
		Long memberId = Long.parseLong((String)session.getAttribute("id"));
		
        // ProductVO 리스트를 가져와서 JSP로 전달
//		Optional<ProductVO> products = productDAO.select(Long.parseLong(req.getParameter("productId")));
//        req.setAttribute("products", products);
        
        // ProductVO 리스트를 가져와서 JSP로 전달
		
	    if (memberId == null) {
	        result.setPath("login.jsp"); // 로그인 페이지로 이동
	        return result;
	    }
		
	    
	    memberDAO.select(memberId).ifPresent((member) -> {
	    	req.setAttribute("member", member);
	    });
	    
	    
//	    try {
//	        Optional<MemberVO> optionalMember = memberDAO.select(memberId);
//	        
//	        if (optionalMember.isPresent()) {
//	            MemberVO member = optionalMember.get();
//	            req.setAttribute("member", member);  // JSP로 전달
//	            System.out.println("Member found: " + member.getMemberNickname());
//	        } else {
//	            req.setAttribute("errorMessage", "회원 정보를 찾을 수 없습니다.");
//	        }
//	    } catch (Exception e) {
//	        e.printStackTrace();
//	    }
//		
//       
		result.setPath("order-buyerlist.jsp");
		return result;
	}

}
