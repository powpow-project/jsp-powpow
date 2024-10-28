package com.app.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.app.Action;
import com.app.Result;

public class MemberSmsController implements Action {

    private UserService userService;  // UserService 변수 선언

    public MemberSmsController() {
        this.userService = new UserService();  // UserService 객체 생성
    }

    @Override
    public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        String phone = req.getParameter("phone");  // 클라이언트로부터 전화번호 가져오기
        String certificationCode = sendCertificationCode(phone);  // 인증 코드 생성

        // 필요한 후속 작업 (예: 응답 처리)
        Result result = new Result();
        result.setRedirect(false);  // 리다이렉트 여부 설정
        req.setAttribute("certificationCode", certificationCode);  // 요청 속성에 인증 코드 저장
        return result;  // Result 객체 반환
    }

    public String sendCertificationCode(String phone) {
        // 6자리 랜덤 숫자 생성
        int randomNumber = (int)((Math.random() * (999999 - 100000 + 1)) + 100000);
        
        // 전화번호 인증 메소드 호출
        userService.certifiedPhoneNumber(phone, randomNumber);
        
        return Integer.toString(randomNumber);  // 생성된 랜덤 숫자 반환
    }
}