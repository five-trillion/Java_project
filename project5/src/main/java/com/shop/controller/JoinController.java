package com.shop.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.shop.domain.UsersVO;
import com.shop.service.JoinService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping(value="/shop/*")
@AllArgsConstructor
@Log4j
public class JoinController {
	
	@Autowired
	private JoinService joinservice;
	
	//회원가입 페이지 이동
	@RequestMapping(value="/join", method=RequestMethod.GET)
	public void loginGET() {
		
		log.info("회원가입 페이지 진입");
	}
	
	//회원가입
	@RequestMapping(value="/join", method=RequestMethod.POST)
	public String joinPOST(UsersVO user) throws Exception{
		
		log.info("join 진입");
		
		
		// 회원가입 서비스 실행
		joinservice.insertUser(user);
		
		log.info("join Service 성공");
		
		return "redirect:/";
		
	}
	
	//로그인 페이지 이동
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public void joinGET() {
		log.info("로그인 페이지 진입");
	}
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String loginPOST(HttpServletRequest request, UsersVO user, RedirectAttributes rttr) throws Exception {
		HttpSession session = request.getSession();
		UsersVO uVo = joinservice.loginUser(user);
		//아이디나 비밀번호가 일치하지 않을 때
		if(uVo == null) {
			int result = 0;
			rttr.addFlashAttribute("result", result);
			return "redirect:/shop/login";
		}
		//아이디와 비밀번호가 일치할 때
		session.setAttribute("user", uVo);
		log.info("login Service 성공");
		return "redirect:/";
	}
	
	//아이디 중복 검사 
	@RequestMapping(value = "/userIdCk", method=RequestMethod.POST)
	@ResponseBody
	public String userIdCkPost(String userId) throws Exception {
		log.info("userIdCk() 진입");
		int result = joinservice.idCheck(userId);
		log.info("결과값 = "+result);
		if(result != 0) {
			return "fail"; //중복 아이디O
		} else {
			return "success"; //중복 아이디X
		}
	}
	//로그아웃
	@RequestMapping(value="logout", method=RequestMethod.GET)
	public String logoutGET(HttpServletRequest request) throws Exception {
		log.info("logoutGET 메서드 진입");
		HttpSession session = request.getSession();
		session.invalidate();
		return "redirect:/";
	}
	//마이페이지 - 회원정보 수정 페이지 이동
	@RequestMapping(value="/mypage-modify", method = RequestMethod.GET)
	public void modifyGet() {
		log.info("회원정보 수정 페이지 진입");
	}
	
	//회원정보 수정 
	@RequestMapping(value="/mypage-modify", method = RequestMethod.POST)
	public String modifyPost(UsersVO user) throws Exception {
		joinservice.updateUser(user);
		log.info("회원정보 수정 성공");
		return "redirect:/";
	}		
}
