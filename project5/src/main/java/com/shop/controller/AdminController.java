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

import com.shop.domain.BoardReplyVO;
import com.shop.domain.BoardVO;
import com.shop.domain.CodeVO;
import com.shop.domain.ProductVO;
import com.shop.domain.ReportVO;
import com.shop.domain.ReviewReplyVO;
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

		
		pVo.setProdMainImg(FileUpload(mainImgMulti, uploadPath));
		pVo.setProdImg1(FileUpload(mini1ImgMulti, uploadPath));
		pVo.setProdImg2(FileUpload(mini2ImgMulti, uploadPath));
		pVo.setProdImg3(FileUpload(mini3ImgMulti, uploadPath));
		pVo.setProdImg4(FileUpload(mini4ImgMulti, uploadPath));
		pVo.setDetailImg(FileUpload(prodImgMulti, uploadPath));
		
		System.out.println(pVo);
		
		adminService.prodRegister(pVo);
		
		return "redirect:/admin/adminHome";
	}
	// file 보내기 메서드
	public String FileUpload(MultipartFile mf, String uploadPath) throws IOException{
		long fileSize = mf.getSize();
		if (fileSize == 0) {
			return null;
		}
		long time = System.currentTimeMillis();
		String orginMainName = mf.getOriginalFilename();
		System.out.println("사이즈알아보기 == " + fileSize);
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
		List<BoardVO> notiList = adminService.getBoard("1");
		
		request.setAttribute("boardList", notiList);
		log.info("adminBoardNoti 도착");
	}
	// 공지 글쓰기
	@GetMapping("/adminNotiWrite")
	public void adminNotiWriteForm()  throws Exception {
		
		log.info("adminNotiWriteForm 도착");
	}
	@PostMapping("/adminNotiWrite")
	public String adminNotiWrite(BoardVO bVo, MultipartHttpServletRequest mf)  throws Exception {
		
		String uploadPath = "D:/Java_project/project5/src/main/webapp/resources/upload/notice/";
		MultipartFile boardImgMulti = mf.getFile("boardImgMulti");
		bVo.setBoardImg(FileUpload(boardImgMulti, uploadPath));
		bVo.setUserNo(1); // 나중에 섹션을 통해 1 자리에 userNo 기입
		adminService.notiWrite(bVo);
		log.info("adminNotiWrite 글 올리는 중");
		
		return "redirect:/admin/adminBoardNoti";
	}
	// 게시판관리 이동 (질의)
	@GetMapping("/adminBoardQna")
	public void adminBoardQna(HttpServletRequest request)  throws Exception {
		List<BoardVO> qnaList = adminService.getBoard("2");
		
		request.setAttribute("boardList", qnaList);
		log.info("adminBoardQna 도착");
	}
	// 답변으로 이동
	@GetMapping("/adminBoardQnaAnswer")
	public void adminBoardQnaAnswer() throws Exception {
		
	}
	// 게시판관리 이동 (자유)
	@GetMapping("/adminBoardFree")
	public void adminBoardFree(HttpServletRequest request)  throws Exception {
		List<BoardVO> freeList = adminService.getBoard("3");
		
		request.setAttribute("boardList", freeList);
		log.info("adminBoardFree 도착");
	}
	
	// 게시판관리 이동 (신고관리)
	@GetMapping("/adminBoardReport")
	public void adminBoardReport(HttpServletRequest request)  throws Exception {
		List<ReportVO> repList = adminService.getReport();
		
		request.setAttribute("repList", repList);
		log.info("adminBoardReport 도착");
	}
	// 신고상세보기
	@GetMapping("/adminReportDetail")
	public void adminReportDetail(@RequestParam("boardNo") long boardNo, @RequestParam("boRepNo") long boRepNo, @RequestParam("reviRepNo") long reviRepNo, HttpServletRequest request) throws Exception {
		if (boardNo != 0) {
			BoardVO bVo = adminService.reportBoard(boardNo);
			request.setAttribute("board", bVo);
		} else if (boRepNo != 0) {
			BoardReplyVO brVo = adminService.reportBoRep(boRepNo);
			request.setAttribute("boardReply", brVo);
		} else if (boardNo != 0) {
			ReviewReplyVO rrVo = adminService.reportReviRep(reviRepNo);
			request.setAttribute("reviewReply", rrVo);
		} else {
			System.out.println("값이 안 넘어 옵니다!!!!!!!!!!!");
		}
	}
	// 신고처리완료
	@GetMapping("/adminReportComplete")
	public String adminReportComplete(@RequestParam("repoNo") int repoNo) {
		adminService.reportComplete(repoNo);
		return "redirect:/admin/adminBoardReport";
	}
	
	// 게시판 삭제
	@GetMapping("/adminBoardDelete")
	public String adminBoardDelete(@RequestParam("boardNo") int boardNo) {
		adminService.boardDelete(boardNo);
		
		return "redirect:/admin/adminBoardNoti";
	}
}