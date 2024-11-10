package com.app.myhome.controller;

import java.io.File;
import java.io.IOException;
import java.util.Optional;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.app.Action;
import com.app.Result;
import com.app.dao.MemberDAO;
//import com.app.dto.MemberDTO;
import com.app.vo.MemberVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class MyhomeUpdateOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		MemberVO memberVO = new MemberVO();
		MemberDAO memberDAO = new MemberDAO();
		HttpSession session = req.getSession();
		
		String memberEmail = (String)session.getAttribute("buyerEmail");
		
	      String directory = req.getServletContext().getRealPath("/assets/images/member");
	      int sizeLimit = 10*500*500; // 100mb
	      
	      // 디렉토리가 존재하지 않으면 생성
	        File dir = new File(directory);
	        if (!dir.exists()) {
	            dir.mkdirs(); // 디렉토리 생성
	        }

	        try {
	            // 파일 업로드 처리
	            MultipartRequest multi = new MultipartRequest(req, directory, sizeLimit, "UTF-8", new DefaultFileRenamePolicy());

	            // 업로드된 파일의 제목과 이름 가져오기
	            String fullAddress = null;
	            String name = multi.getParameter("name");
	            String nickname = multi.getParameter("nickname");
	            String phone = multi.getParameter("phone");
	            String[] addressAll = multi.getParameterValues("address");
	            String profile = multi.getFilesystemName("profile");
	            for(String address : addressAll) {
	            	fullAddress += address;
	            }
	            
	            Long memberId = memberDAO.findBuyerByEmail(memberEmail);
	            Optional<MemberVO> findUser = memberDAO.select(memberId);
	            findUser.ifPresent((findMemberVO) -> {
	            	memberVO.setMemberPassword(findMemberVO.getMemberPassword());
	            });
	            memberVO.setId(memberId);
	            memberVO.setMemberName(name);
	            memberVO.setMemberNickname(nickname);
	            memberVO.setMemberAddress(fullAddress);
	            memberVO.setMemberPhone(phone);
	            memberVO.setMemberImage(profile);
	            System.out.println(memberVO);
	            
	            // 파일이 성공적으로 업로드되었는지 확인
	            if (profile != null) {
	                System.out.println("파일 제목: " + profile);
	                System.out.println("파일이 저장된 경로: " +  profile);
	            } else {
	            	profile = "default-bird.svg";
	               System.out.println();
	               System.out.println("파일이 저장된 경로: " +  profile);
	            }
	        } catch (Exception e) {
	            e.printStackTrace(); // 예외 발생 시 스택 트레이스 출력
	        }
		
        
		memberDAO.updateBuyer(memberVO);
		
     // 업데이트 후 리다이렉트 경로 설정
        result.setRedirect(true);
        result.setPath("../myhome/list.myhome");

        return result;
	}

}
