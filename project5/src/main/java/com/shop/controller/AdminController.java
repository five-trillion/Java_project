package com.shop.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.shop.domain.BoardVO;
import com.shop.domain.UsersVO;
import com.shop.service.AdminService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/admin/*")
@AllArgsConstructor
public class AdminController {

	@Autowired
	AdminService adminService;
	
	@GetMapping("/adminHome")
	public void adminHome()  throws Exception {
		log.info("adminHome 도착");
	}
	

	@GetMapping("/adminUserManage") 
	public void adminUserManage(HttpServletRequest request) throws Exception {
		log.info("adminUserManage 도착");
		List<UsersVO> userList = adminService.getUsers();
		
		request.setAttribute("userList", userList); 
	}
	
	@GetMapping("/adminBoardNoti")
	public void adminBoardNoti(HttpServletRequest request)  throws Exception {
		List<BoardVO> notiList = adminService.getNotiBoard("1");
		
		request.setAttribute("boardList", notiList);
		log.info("adminBoardNoti 도착");
	}
	
	@GetMapping("/adminBoardFree")
	public void adminBoardFree(HttpServletRequest request)  throws Exception {
		List<BoardVO> notiList = adminService.getNotiBoard("2");
		
		request.setAttribute("boardList", notiList);
		log.info("adminBoardFree 도착");
	}
	@GetMapping("/adminBoardQna")
	public void adminBoardQna(HttpServletRequest request)  throws Exception {
		
		log.info("adminBoardQna 도착");
	}
	@GetMapping("/adminBoardReport")
	public void adminBoardReport(HttpServletRequest request)  throws Exception {
		
		log.info("adminBoardReport 도착");
	}
}
