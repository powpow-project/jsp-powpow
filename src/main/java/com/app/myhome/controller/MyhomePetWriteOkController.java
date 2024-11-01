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
import com.app.vo.PetVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class MyhomePetWriteOkController implements Action {

   @Override
   public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
	   Result result = new Result();
	   MemberDAO memberDAO = new MemberDAO();
	   MyhomeDAO myhomeDAO = new MyhomeDAO();
	   PetVO petVO = new PetVO();
	   HttpSession session = req.getSession();
	   
//	   String sid = session.getId();
//	   System.out.println(session);
//	      session.setAttribute("id", 1L);
//	      Long memberId = Long.parseLong(String.valueOf(session.getAttribute("id")));
	   
		String memberEmail = (String)session.getAttribute("buyerEmail");
		System.out.println(memberEmail);
		Long memberId = 1L;
		
		
      String directory = req.getServletContext().getRealPath("/assets/images/myhome");
      System.out.println(directory);
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
            String petName = multi.getParameter("petName");
            String petKind = multi.getParameter("petKind");
            String petGender = multi.getParameter("petGender");
            String petBreed = multi.getParameter("petBreed");
            String petBirth = multi.getParameter("petBirth");
            String petWeight = multi.getParameter("petWeight");
            String petNeuter = multi.getParameter("petNeuter");
            String petVet = multi.getParameter("petVet");
            String fileName = multi.getFilesystemName("petImage");
            
            //적기
            petVO.setMemberId(memberId);
            petVO.setPetName(petName);
            petVO.setPetKind(petKind);
            petVO.setPetGender(petGender);
            petVO.setPetBreed(petBreed);
            petVO.setPetBirth(petBirth);
            petVO.setPetWeight(Integer.parseInt(petWeight));
            petVO.setPetNeuter(Boolean.parseBoolean(petNeuter));
            petVO.setPetVet(petVet);
            petVO.setPetImage(fileName);
            
            System.out.println("==== 데이터 출력 ====");
//            System.out.println(memberId);
            System.out.println(petName);
            System.out.println(petGender);
            System.out.println(petBreed);
            System.out.println(petBirth);
            System.out.println(petWeight);
            System.out.println(petNeuter);
            System.out.println(petVet);
            System.out.println(fileName);

            // 파일이 성공적으로 업로드되었는지 확인
            if (fileName != null) {
                System.out.println("파일 제목: " + petName);
                System.out.println("파일이 저장된 경로: " +  fileName);
            } else {
               fileName = "default-bird.svg";
               System.out.println();
               System.out.println("파일이 저장된 경로: " +  fileName);
            }
        } catch (Exception e) {
            e.printStackTrace(); // 예외 발생 시 스택 트레이스 출력
        }
        
      myhomeDAO.insertPet(petVO);
      
      result.setRedirect(true);
      result.setPath("../myhome/pet-list.myhome");
      
      return result;
   }
}



