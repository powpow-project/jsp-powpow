package com.app.myhome.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.MemberDAO;
import com.app.dao.MyhomeDAO;
import com.app.vo.MemberVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class MyhomeWriteController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		MemberVO memberVO = new MemberVO();
		MyhomeDAO myhomeDAO = new MyhomeDAO();
		MemberDAO memberDAO = new MemberDAO();
		HttpSession session = req.getSession();
		String directory =req.getServletContext().getRealPath("/assets/images/member");
		int sizeLimit = 20*500*500; // 100mb
		
		   
			String memberEmail = (String)session.getAttribute("buyerEmail");
//			System.out.println(memberEmail);
			Long memberId = 1L;
		
//		String memberNickname = "오징어";
//		Long memberId = memberDAO.selectByMemberEmail(buyerEmail).getId();

		
//		System.out.println(memberNickname);
		
		
		
		// 디렉토리가 존재하지 않으면 생성
		File dir = new File(directory);
		if (!dir.exists()) {
			dir.mkdirs(); // 디렉토리 생성
		}
		
		try {
			// 파일 업로드 처리
			MultipartRequest multi = new MultipartRequest(req, directory, sizeLimit, "UTF-8", new DefaultFileRenamePolicy());
			
			// 업로드된 파일의 제목과 이름 가져오기
			String title = multi.getParameter("title");
			String mainImage = multi.getFilesystemName("memberImage");
//			memberVO.setMemberId(memberId);
			
			
			// 파일이 성공적으로 업로드되었는지 확인
			if (mainImage != null) {
				memberVO.setMemberImage(mainImage);
				
			} else {
				
			}
		} catch (Exception e) {
			e.printStackTrace(); // 예외 발생 시 스택 트레이스 출력
		}
		
//		memberDAO.insert(memberVO);
		
		
		result.setRedirect(true);
		result.setPath("../myhome/myhome-list.myhome");
		
		return result;
	}

}
