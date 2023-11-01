package com.stray.spring.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.stray.spring.dto.UserVO;
import com.stray.spring.service.AuthService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@RequestMapping("/Auth/*")
@AllArgsConstructor
@Controller
public class AuthController {
	private AuthService service;

	@GetMapping("/signin") //로그인창 보내기
	public void signin() {
	}
	
	@PostMapping("/signin") //로그인창 보내기
	public String signup(UserVO uvo, HttpSession session) {
		System.out.println(uvo.getU_id());
		int check = service.signIn(uvo.getU_id(), uvo.getU_pw());
		if(check == 1) {
			UserVO user = service.getUser(uvo.getU_id());
			session.setAttribute("user", user);
			//System.out.println(user.getU_name());
			return "redirect:/home";
		}
		else {
			return "redirect:/signin";
		}
	}
	
	@GetMapping("/createaccount") //로그인창 보내기
	public void createaccount() {
		System.out.println("일단 되긴함?");
	}
	@GetMapping("/createAccount")
	public void createAccountTest(UserVO uvo, @RequestParam(value = "u_addrstreet", defaultValue = "whatthe") String u_addr){
		System.out.println(u_addr);
		service.createAccount(uvo);
	}
	@PostMapping("/createAccount")
	public String createAccount(UserVO uvo) {
		//UserVO uvo = new UserVO(id, pw, name, email, phone, addrnum, addrstreet, addrdetail);
		service.createAccount(uvo);
		return "redirect:/Auth/signin";
	}
	@ResponseBody
	@PostMapping("/checkId")
	public String checkId(@RequestBody String account) {	// 받을 데이터타입이 텍스트라 스트링으로함 반드시 리퀘스트바디를 붙힐것! ajax 통신시
		System.out.println("/Auth/checkId : post");
		System.out.println("param : " + account );
		
		int checkNum = service.checkId(account);
		if(checkNum == 1) {
			System.out.println("아이디가 중복되었다.");
			return "duplicated";
		}else {
			System.out.println("아이디 사용 가능");
			return "available";
		}
	}
	
	
	@GetMapping("/editaccount") //로그인창 보내기
	public void editaccount() {
	}
}