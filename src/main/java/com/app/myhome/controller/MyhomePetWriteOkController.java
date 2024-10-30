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
import com.app.dao.PetDAO;
import com.app.vo.MemberVO;
import com.app.vo.PetVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class MyhomePetWriteOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		
		  Result result = new Result();
	      PetVO petVO = new PetVO();
	      MemberVO memberVO = new MemberVO();
	      PetDAO petDAO = new PetDAO();
	      MemberDAO memberDAO = new MemberDAO();
	      MyhomeDAO myhomeDAO = new MyhomeDAO();
	      String directory =req.getServletContext().getRealPath("/assets/images/myhome");
	      int sizeLimit = 10*500*500; 
	      
	      
	      HttpSession session = req.getSession();

	      
//      String memberEmail = (String)session.getAttribute("memberEmail");
	      String memberEmail = "jingeo@gmail.com";
	      MemberVO memberId = myhomeDAO.selectBuyerByEmail(memberEmail).get();
	      
	      
	      // 디렉토리가 존재하지 않으면 생성
	      File dir = new File(directory);
	      if (!dir.exists()) {
	         dir.mkdirs(); // 디렉토리 생성
	      }
	      
	      try {
	         // 파일 업로드 처리
	         MultipartRequest multi = new MultipartRequest(req, directory, sizeLimit, "UTF-8", new DefaultFileRenamePolicy());
	         
	         // 업로드된 파일의 제목과 이름 가져오기
	         String petImage = multi.getFilesystemName("petImage");
	        
	         petVO.setPetName(multi.getParameter("petName"));
	         petVO.setPetKind(multi.getParameter("petKind"));
	         petVO.setPetGender(Boolean.parseBoolean(multi.getParameter("petGender")));
	         petVO.setPetBreed(multi.getParameter("petBreed"));
	         petVO.setPetBirth(multi.getParameter("petBirth"));
	         petVO.setPetVet(multi.getParameter("petVet"));
	         petVO.setPetWeight(Double.parseDouble(multi.getParameter("petWeight")));
	         petVO.setPetNeuter(Boolean.parseBoolean(multi.getParameter("petNeuter")));
	         
	         // 파일이 성공적으로 업로드되었는지 확인
	         if (petImage != null) {
	        	    petVO.setPetImage(petImage); // 실제 파일 이름 사용
	        	} else {
	        	    petVO.setPetImage("../assets/images/myhome/default-dog.svg");
	        	}
	      } catch (Exception e) {
	         e.printStackTrace(); // 예외 발생 시 스택 트레이스 출력
	      }
	      
	      petDAO.insertPet(petVO);
	      
	      
	      req.getParameter("petName");
	      
	      System.out.println("실행");
	      System.out.println(req.getParameter("petKind"));
	      
	      result.setRedirect(true);
	      result.setPath("../myhome/pet-list.myhome");
	      
	      return result;
	   }

	}



