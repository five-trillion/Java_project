package com.shop.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.shop.domain.AnswerVO;
import com.shop.domain.BoardReplyVO;
import com.shop.domain.BoardVO;
import com.shop.domain.CodeVO;
import com.shop.domain.DeliveryVO;
import com.shop.domain.OrderDetailVO;
import com.shop.domain.OrderInfoVO;
import com.shop.domain.ProductVO;
import com.shop.domain.ReportVO;
import com.shop.domain.ReviewReplyVO;
import com.shop.domain.SalesVO;
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
	public void adminHome(Model model)  throws Exception {
		
		SalesVO sales = adminService.getTodaySales();
		SalesVO join = adminService.getTodayJoin();
		List<SalesVO> pRk = adminService.getProdRanking();
		List<BoardVO> bRk = adminService.getBoardRanking();
		model.addAttribute("sales", sales);
		model.addAttribute("join", join);		
		model.addAttribute("prodRanking", pRk);
		model.addAttribute("boardRanking", bRk);
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
		
		String uploadPath1 = "D:/Java_project/project5/src/main/webapp/resources/upload/product/main/";
		String uploadPath2 = "D:/Java_project/project5/src/main/webapp/resources/upload/product/info/";
		String uploadPath3 = "D:/Java_project/project5/src/main/webapp/resources/upload/product/detail/";
		MultipartFile mainImgMulti = mf.getFile("mainImgMulti");
		MultipartFile prodImgMulti = mf.getFile("prodImgMulti");
		MultipartFile mini1ImgMulti = mf.getFile("mini1ImgMulti");
		MultipartFile mini2ImgMulti = mf.getFile("mini2ImgMulti");
		MultipartFile mini3ImgMulti = mf.getFile("mini3ImgMulti");
		MultipartFile mini4ImgMulti = mf.getFile("mini4ImgMulti");

		
		pVo.setProdMainImg(prodFileUpload(mainImgMulti, uploadPath1));
		pVo.setProdImg1(prodFileUpload(mini1ImgMulti, uploadPath3));
		pVo.setProdImg2(prodFileUpload(mini2ImgMulti, uploadPath3));
		pVo.setProdImg3(prodFileUpload(mini3ImgMulti, uploadPath3));
		pVo.setProdImg4(prodFileUpload(mini4ImgMulti, uploadPath3));
		pVo.setDetailImg(prodFileUpload(prodImgMulti, uploadPath2));
		
		System.out.println(pVo);
		
		adminService.prodRegister(pVo);
		
		return "redirect:/admin/adminProdList";
	}
	// file 보내기 메서드
	public String prodFileUpload(MultipartFile mf, String uploadPath) throws IOException{
		long fileSize = mf.getSize();
		if (fileSize == 0) {
			return null;
		}
		long time = System.currentTimeMillis();
		String orginMainName = mf.getOriginalFilename();
		String saveName = fileSize + orginMainName;		
		File file = new File(uploadPath+saveName);
		
		mf.transferTo(file);
		
		return saveName;
	}
	// 상품 목록 이동
	@GetMapping("/adminProdList")
	public void adminProdList(HttpServletRequest request) throws Exception {
		log.info("adminProdList 도착");
		List<ProductVO> prodList = adminService.getListProd();
		
		request.setAttribute("prodList", prodList);
	}
	
	// 상품 정보 업데이트 페이지 이동
	
	  @GetMapping("/adminProdUpdateForm") 
	  public void adminProdUpdateForm(@RequestParam("prodNo") String prodNo, Model model) {
	  log.info("정보 수정 페이지 이동중"); 
	  System.out.println(prodNo);
	  model.addAttribute("getProd", adminService.getProd(prodNo)); 
	  }
	  
	 // 상품 정보 업데이트 처리
	  @PostMapping("/adminProdUpdateForm")
	  public String adminProdUpdate(ProductVO prodVo, RedirectAttributes rttr, MultipartHttpServletRequest mf) 
			 throws IOException {
		  log.info("상품 정보 업데이트 : "+ prodVo);
		  System.out.println(prodVo);
			  String uploadPath = "D:/Java_project/project5/src/main/webapp/resources/upload/product/";
				MultipartFile mainImgMulti = mf.getFile("mainImgMulti");
				MultipartFile prodImgMulti = mf.getFile("prodImgMulti");
				MultipartFile mini1ImgMulti = mf.getFile("mini1ImgMulti");
				MultipartFile mini2ImgMulti = mf.getFile("mini2ImgMulti");
				MultipartFile mini3ImgMulti = mf.getFile("mini3ImgMulti");
				MultipartFile mini4ImgMulti = mf.getFile("mini4ImgMulti");

				
				prodVo.setProdMainImg(prodFileUpload(mainImgMulti, uploadPath));
				prodVo.setProdImg1(prodFileUpload(mini1ImgMulti, uploadPath));
				prodVo.setProdImg2(prodFileUpload(mini2ImgMulti, uploadPath));
				prodVo.setProdImg3(prodFileUpload(mini3ImgMulti, uploadPath));
				prodVo.setProdImg4(prodFileUpload(mini4ImgMulti, uploadPath));
				prodVo.setDetailImg(prodFileUpload(prodImgMulti, uploadPath));
			  
			if (adminService.prodModify(prodVo)) {
				rttr.addFlashAttribute("result", "success");
		  }
		 
		  return "redirect:/admin/adminProdList";
	  }
	
	// 상품 삭제
	@GetMapping("/adminProdDelete")
	public String adminProdDelete(@RequestParam("prodNo") String prodNo, RedirectAttributes rttr) {
		log.info("remove..."+prodNo);
		if (adminService.prodRemove(prodNo)) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/admin/adminProdList";
	}
	
	//주문 관련 시작
	// 주문 목록
	@GetMapping("/adminOrderList")
	public void adminOrderList(Model model) {
	    // 서비스 레이어에서 주문, 상세, 배송, 상품 정보를 가져옵니다.
	    List<OrderInfoVO> orderlist = adminService.orderList();
	    	    
	    model.addAttribute("orderlist", orderlist);
	   System.out.println(orderlist);

	    // JSP 페이지로 이동합니다.   
	}
	
	// 미처리 주문 목록
	@GetMapping("/adminUnsetOrder")
	public void adminUnsetOrder(Model model) {
	    // 서비스 레이어에서 주문, 상세, 배송, 상품 정보를 가져옵니다.
	    List<OrderInfoVO> orderUnsetList = adminService.orderUnsetList();
	    	    
	    model.addAttribute("orderUnsetList", orderUnsetList);
	   System.out.println(orderUnsetList);

	    // JSP 페이지로 이동합니다.   
	}
	
	//송장 번호 입력 	
	@GetMapping("/deliInfo")
	@ResponseBody
    public ResponseEntity<String> getDeliInfo(@RequestParam("orderNo") String orderNo,
                                             @RequestParam("deliInfo") String deliInfo) {
        // 서비스를 통해 주문 정보 업데이트
		String orderString = orderNo.substring(0, 8) + "_" + orderNo.substring(8, orderNo.length());
		
        adminService.deliInfo(orderString, deliInfo);
        System.out.println(orderString +"/"+ deliInfo);
        // 성공적으로 업데이트되었다고 가정하고 응답
        return ResponseEntity.ok("Delivery info updated successfully.");
    }
	
	//주문 상세 보기
	@GetMapping("/adminOrderDetail")
	public void adminOrderDetail(Model model) {
	  
	    List<OrderInfoVO> adminOrderDetail = adminService.adminOrderDetail();
	    	    
	    model.addAttribute("adminOrderDetail", adminOrderDetail);
	   System.out.println(adminOrderDetail);

	    // JSP 페이지로 이동합니다.   
	}
	
	
	// 회원관리 이동
	@GetMapping("/adminUserManage") 
	public void adminUserManage(HttpServletRequest request) throws Exception {
		log.info("adminUserManage 도착");
		List<UsersVO> userList = adminService.getUsers();
		
		request.setAttribute("userList", userList); 
	}
	// 회원정보 수정
	@GetMapping("/adminUserModify")
	public void adminUserModify(@RequestParam("userNo") long userNo, HttpServletRequest request) throws Exception {
		UsersVO uVo = adminService.getUserDetail(userNo);
		request.setAttribute("user", uVo);
	}
	@PostMapping("/adminUserModify")
	public String adminUserModify(UsersVO uVo) throws Exception {
		adminService.UpdateUserDetail(uVo);
		return "redirect:/admin/adminUserManage";
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
		bVo.setBoardImg(prodFileUpload(boardImgMulti, uploadPath));
		bVo.setUserNo(1); // 나중에 섹션을 통해 1 자리에 userNo 기입
		adminService.notiWrite(bVo);
		log.info("adminNotiWrite 글 올리는 중");
		
		return "redirect:/admin/adminBoardNoti";
	}
	// 공지 수정
	@GetMapping("/adminNotiModify")
	public void adminNotiModify(@RequestParam("boardNo") long boardNo, HttpServletRequest request) throws Exception {
		BoardVO noti = adminService.getBoardDetail(boardNo);
		request.setAttribute("noti", noti);
	}
	@PostMapping("/adminNotiModify")
	public String adminNotiModifyComple(BoardVO bVo, MultipartHttpServletRequest mf, HttpServletRequest request) throws Exception {
		String uploadPath = "D:/Java_project/project5/src/main/webapp/resources/upload/notice/";
		MultipartFile boardImgMulti = mf.getFile("boardImgMulti");
		bVo.setBoardImg(prodFileUpload(boardImgMulti, uploadPath));
		adminService.notiModify(bVo);
		
		return "redirect:/admin/adminBoardNoti";
	}
	// 게시판관리 이동 (질의)
	@GetMapping("/adminBoardQna")
	public void adminBoardQna(HttpServletRequest request)  throws Exception {
		List<BoardVO> qnaList = adminService.getBoardQna();
		
		request.setAttribute("boardList", qnaList);
		log.info("adminBoardQna 도착");
	}
	// 답변으로 이동
	@GetMapping("/adminBoardQnaAnswer")
	public void adminBoardQnaAnswer(@RequestParam("boardNo") long boardNo, HttpServletRequest request) throws Exception {
		BoardVO bVo = adminService.getBoardDetail(boardNo);
		request.setAttribute("question", bVo);
	}
	@PostMapping("/adminBoardQnaAnswer")
	public String adminBoardQnaComplete (AnswerVO answerVo) {
		adminService.ansComplete(answerVo);
		return "redirect:/admin/adminBoardQna";
	}
	// 답변 수정
	@GetMapping("/adminBoardQnaModify")
	public void adminBoardQnaModify(@RequestParam("boardNo") long boardNo, HttpServletRequest request) {
		BoardVO bVo = adminService.getBoardDetail(boardNo);
		request.setAttribute("question", bVo);
		
		AnswerVO aVo = adminService.getAnswer(boardNo);
		request.setAttribute("answer", aVo);
	}
	@PostMapping("/adminBoardQnaModify")
	public String adminBoardQnaModifyComple(AnswerVO answerVo) {
		adminService.updateAnswer(answerVo);
		return "redirect:/admin/adminBoardQna";
	}
	// 게시판관리 이동 (자유)
	@GetMapping("/adminBoardFree")
	public void adminBoardFree(HttpServletRequest request)  throws Exception {
		List<BoardVO> freeList = adminService.getBoard("3");
		
		request.setAttribute("boardList", freeList);
		log.info("adminBoardFree 도착");
	}
	// 게시판 리뷰보기
	@GetMapping("/adminBoardReview")
	public void adminBoardReview(@RequestParam("boardNo") long boardNo, HttpServletRequest request) {
		List<BoardReplyVO> repList = adminService.getBoardReview(boardNo);
		
		request.setAttribute("repList", repList);
	}
	// 게시판 리뷰삭제
	@GetMapping("/adminBoardReviewDelete")
	public String adminBoardReviewDelete(@RequestParam("boRepNo") long boRepNo, @RequestParam("boardNo") long boardNo, RedirectAttributes reAttr) {
		adminService.boardReviwDelete(boRepNo);
		reAttr.addAttribute("boardNo", boardNo);
		return "redirect:/admin/adminBoardReview";
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
		
		return "redirect:/shop/join";
	}
	
	// 매출관리
	@GetMapping("/adminSalesManage")
	public void adminSalesManage(HttpServletRequest request) throws Exception {
		String startDate = request.getParameter("startDate");
		String endDate = request.getParameter("endDate");
		
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		List<SalesVO> saleList = adminService.getSalesInfo();
		
		
		if ((startDate != null && startDate != "") && (endDate != null && endDate != "")) {
			Date startDateFormat = format.parse(startDate);
			Date endDateFormat = format.parse(endDate);
		
			request.setAttribute("startDate", startDateFormat);
			request.setAttribute("endDate", endDateFormat);
			System.out.println(startDateFormat);
			System.out.println(endDateFormat);
		} else if ((startDate != null && startDate != "")) {
			Date startDateFormat = format.parse(startDate);
			System.out.println("여기2");
			request.setAttribute("startDate", startDateFormat);
			request.setAttribute("endDate", endDate);
		} else if (endDate != null && endDate != "") {
			Date endDateFormat = format.parse(endDate);
			System.out.println("여기3");
			request.setAttribute("startDate", startDate);
			request.setAttribute("endDate", endDateFormat);
		}
		else {
			request.setAttribute("startDate", startDate);
			request.setAttribute("endDate", endDate);
		}
		System.out.println(startDate != null);
		System.out.println(startDate != "");
		System.out.println("매출관리4");
		
		
		request.setAttribute("sales", saleList);
		System.out.println(saleList.get(0).getSalesDate());
	}
	
	// 가입자
	@GetMapping("/adminJoinView")
	public void adminJoinView(HttpServletRequest request) throws Exception {
		String startDate = request.getParameter("startDate");
		String endDate = request.getParameter("endDate");
		
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		
		if ((startDate != null && startDate != "") && (endDate != null && endDate != "")) {
			Date startDateFormat = format.parse(startDate);
			Date endDateFormat = format.parse(endDate);
		
			request.setAttribute("startDate", startDateFormat);
			request.setAttribute("endDate", endDateFormat);
			System.out.println(startDateFormat);
			System.out.println(endDateFormat);
		} else if ((startDate != null && startDate != "")) {
			Date startDateFormat = format.parse(startDate);
			System.out.println("여기2");
			request.setAttribute("startDate", startDateFormat);
			request.setAttribute("endDate", endDate);
		} else if (endDate != null && endDate != "") {
			Date endDateFormat = format.parse(endDate);
			System.out.println("여기3");
			request.setAttribute("startDate", startDate);
			request.setAttribute("endDate", endDateFormat);
		}
		else {
			request.setAttribute("startDate", startDate);
			request.setAttribute("endDate", endDate);
		}
		
		List<SalesVO> joinList = adminService.getJoinView();
		request.setAttribute("join", joinList);
	}
	
}