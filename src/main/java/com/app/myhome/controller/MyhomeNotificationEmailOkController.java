package com.app.myhome.controller;

import java.io.IOException;
import java.util.Optional;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.MemberDAO;
import com.app.vo.MemberVO;

public class MyhomeNotificationEmailOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		MemberDAO memberDAO = new MemberDAO();
		MemberVO memberVO = new MemberVO();
		HttpSession session = req.getSession();
		Long id = memberDAO.findBuyerByEmail((String)session.getAttribute("buyerEmail"));
		Optional<MemberVO> findUser = memberDAO.select(id);
		
		findUser.ifPresent((user) -> {
			memberVO.setId(user.getId());
			memberVO.setMemberEmailCheck(user.isMemberEmailCheck() == '1' ? '0' : '1');
			memberVO.setMemberSms(user.isMemberSms());
		});

		System.out.println(memberVO);
		memberDAO.updateNotification(memberVO);
		
		// 결과 페이지 설정
		result.setRedirect(true);
		result.setPath("../myhome/notification.myhome");
		return result;
	}
}
