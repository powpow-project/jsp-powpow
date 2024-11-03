package com.app.member.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.app.Action;
import com.app.Result;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

public class MemberBuyerPhoneController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
	      Result result = new Result();
	      
	      Boolean authenticationRequest = Boolean.parseBoolean(req.getParameter("sms"));
	      if(authenticationRequest) {
	         String api_key = "NCS9N9SYNY3LYZLH";
	         String api_secret = "JIHJZVV1DKNKAUM3PLMR0NMH1YGGECDY";
	         String phone = req.getParameter("phone");
	         Message coolsms = new Message(api_key, api_secret);
	         
	          int random = 0;
	          random = (int)Math.floor((Math.random()*(999999-100000+1)))+100000;
	          
//	          화면쪽에서 검증
	          req.setAttribute("code", random);
	          System.out.println(random);

	         // 4 params(to, from, type, text) are mandatory. must be filled
	         HashMap<String, String> params = new HashMap<String, String>();
	         params.put("to", phone);
	         params.put("from", "01040685166");
	         params.put("type", "SMS");
	         params.put("text", "[powpow] 인증번호 "+ random +" 를 입력하세요.");
	         params.put("app_version", "text app 1.2"); // application name and version

	         try {
	            JSONObject obj = (JSONObject) coolsms.send(params);
	            System.out.println(obj.toString());
	         } catch (CoolsmsException e) { 
	            System.out.println(e.getMessage());
	            System.out.println(e.getCode());
	         }
	         
	      }
	      
	      result.setPath("../member/member-buyer-phone.jsp");
	      return result;
	   }

	}