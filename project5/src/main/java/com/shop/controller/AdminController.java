package com.shop.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.shop.domain.BoardVO;
import com.shop.domain.CodeVO;
import com.shop.domain.ProductVO;
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
	
	// adminHome 이동
	@GetMapping("/adminHome")
	public void adminHome()  throws Exception {
		log.info("adminHome 도착");
	}
	
	// 상품관리 이동
	@GetMapping("/adminProdInsert")
	public void adminprodInsert(HttpServletRequest request) {
		System.out.println("adminProdInsert 도착");
		
		List<CodeVO> codeList = adminService.prodCodeInsert();
		
		request.setAttribute("codeList", codeList);
		log.info("상품 등록 페이지 도착");
	}
	@PostMapping("/adminProdInsert") 
	public String prodRegister(ProductVO pVo, MultipartHttpServletRequest mf) throws IOException { 
		
		String uploadPath = "D:/Java_project/project5/src/main/webapp/resources/upload/product/";
		MultipartFile mainImgMulti = mf.getFile("mainImgMulti");
		MultipartFile prodImgMulti = mf.getFile("prodImgMulti");
		MultipartFile mini1ImgMulti = mf.getFile("mini1ImgMulti");
		MultipartFile mini2ImgMulti = mf.getFile("mini2ImgMulti");
		MultipartFile mini3ImgMulti = mf.getFile("mini3ImgMulti");
		MultipartFile mini4ImgMulti = mf.getFile("mini4ImgMulti");

		
		pVo.setProdMainImg(prodFileUpload(mainImgMulti, uploadPath));
		pVo.setProdImg1(prodFileUpload(mini1ImgMulti, uploadPath));
		pVo.setProdImg2(prodFileUpload(mini2ImgMulti, uploadPath));
		pVo.setProdImg3(prodFileUpload(mini3ImgMulti, uploadPath));
		pVo.setProdImg4(prodFileUpload(mini4ImgMulti, uploadPath));
		pVo.setDetailImg(prodFileUpload(prodImgMulti, uploadPath));
		
		System.out.println(pVo);
		
		adminService.prodRegister(pVo);
		
		return "redirect:/admin/adminHome";
	}
	// file 보내기 메서드
	public String prodFileUpload(MultipartFile mf, String uploadPath) throws IOException{
		long time = System.currentTimeMillis();
		String orginMainName = mf.getOriginalFilename();
		long fileSize = mf.getSize();
		String saveName = time + fileSize + orginMainName;		
		File file = new File(uploadPath+saveName);
		
		mf.transferTo(file);
		
		return saveName;
	}
	
	// 회원관리 이동
	@GetMapping("/adminUserManage") 
	public void adminUserManage(HttpServletRequest request) throws Exception {
		log.info("adminUserManage 도착");
		List<UsersVO> userList = adminService.getUsers();
		
		request.setAttribute("userList", userList); 
	}
	
	// 회원관리 삭제
	@GetMapping("/adminUserDelete")
	public String adminUserDelete(@RequestParam("userNo") long userNo) {
		adminService.userDelete(userNo);
		
		return "redirect:/admin/adminUserManage";
	}
	
	// 게시판관리 이동 (공지)
	@GetMapping("/adminBoardNoti")
	public void adminBoardNoti(HttpServletRequest request)  throws Exception {
		List<BoardVO> notiList = adminService.getNotiBoard("1");
		
		request.setAttribute("boardList", notiList);
		log.info("adminBoardNoti 도착");
	}
	
	// 게시판관리 이동 (자유)
	@GetMapping("/adminBoardFree")
	public void adminBoardFree(HttpServletRequest request)  throws Exception {
		List<BoardVO> freeList = adminService.getNotiBoard("2");
		
		request.setAttribute("boardList", freeList);
		log.info("adminBoardFree 도착");
	}
	
	// 게시판관리 이동 (질의)
	@GetMapping("/adminBoardQna")
	public void adminBoardQna(HttpServletRequest request)  throws Exception {
		List<BoardVO> qnaList = adminService.getNotiBoard("3");
		
		request.setAttribute("boardList", qnaList);
		log.info("adminBoardQna 도착");
	}
	// 게시판관리 이동 (신고관리)
	@GetMapping("/adminBoardReport")
	public void adminBoardReport(HttpServletRequest request)  throws Exception {
		
		log.info("adminBoardReport 도착");
	}
}