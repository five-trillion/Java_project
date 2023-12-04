package com.shop.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.shop.domain.ProductVO;
import com.shop.domain.ReviewVO;
import com.shop.service.ShopService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@AllArgsConstructor
public class ShopController {
	private static final Logger logger = LoggerFactory.getLogger(ShopController.class);
	
	@Autowired
	ShopService service;
	
	@RequestMapping(value="shop", method = RequestMethod.GET)
	public String list(Model model) throws Exception {
		try {
			logger.info("=======controller.prodlist========");
			List<ProductVO> prodlist = service.prodList();
			model.addAttribute("prodlist", prodlist);
			return "shop/list";
		} catch(Exception e) {
			logger.error("Error fetching prodlist", e);
            return "error";
		}
	}
	@RequestMapping(value = "shop/detail", method = RequestMethod.GET)
	public String detail(@RequestParam("prodNo") String prodNo, Model model) throws Exception {
		if (prodNo == null) {
	        log.error("Invalid prodNo: " + prodNo);
	    } else {
	        service.updateProdCnt(prodNo); // 조회 수 업데이트
	        ProductVO proddetail = service.prodDetail(prodNo); // 상세 정보 조회
	        model.addAttribute("prd", proddetail);
	        
	        List<ReviewVO> revidlist = service.reviewdList(); // 해당상품 리뷰목록구현
	        model.addAttribute("rlist", revidlist);
	    }
		return "shop/detail";
	}
	@RequestMapping(value="/cart", method = RequestMethod.GET)
	public String cart() {
		log.info("========cart========");
		return "shop/cart";
	}
	@RequestMapping(value="mypage", method = RequestMethod.GET)
	public String mypage() {
		return "mypage/mypage";
	}
	@RequestMapping(value="mypage/content", method = RequestMethod.GET)
	public void mypage_content() {
		
	}
	@RequestMapping(value="mypage/order", method = RequestMethod.GET)
	public void mypage_order() {
		
	}
	@RequestMapping(value="mypage/point", method = RequestMethod.GET)
	public void mypage_point() {
		
	}
	@RequestMapping(value="mypage/user", method = RequestMethod.GET)
	public void mypage_user() {
		
	}
	/* @RequestMapping(value="review", method = RequestMethod.GET)
	public List<ReviewVO> reviewList() throws Exception {
		return "review";
	}
	
	@RequestMapping(value="review", method = RequestMethod.GET)
	public ReviewVO reviewDetail(int reviNo) throws Exception {
		return "review";
	}
	
	@RequestMapping(value="review", method = RequestMethod.GET)
	public int updateReviewCnt(int reviNo) throws Exception {
		return "review";
	}
	
	@RequestMapping(value="review", method = RequestMethod.GET)
	public int reviewRegister(ReviewVO reviVO) throws Exception {
		return "review";
	}
	
	@RequestMapping(value="review", method = RequestMethod.GET)
	public int reviewUpdate(ReviewVO reviVO) throws Exception {
		return "review";
	}
	
	@Override
	public int reviewDelete(int reviNo) throws Exception {
		return mapper.reviewDelete(reviNo);
	}
	@RequestMapping(value="shop/freelist", method = RequestMethod.GET)
	public ModelAndView freelist(Model model) throws Exception {
	      
	      log.info("=========list==========");
	      ModelAndView mav = new ModelAndView();
	      
	      List<BoardVO> freelist = service.freeList();
	      mav.addObject("freelist", freelist);
	      mav.setViewName("freelist");
	      
	      return mav;
	} 
	@RequestMapping(value="shop/freedetail", method = RequestMethod.GET)
	public String freedetail(@RequestParam("boardNo") int boardNo, Model model) throws Exception {
		BoardVO freeboard = service.freeDetail(boardNo);
		model.addAttribute("freeboard", freeboard);
//		댓글목록
		List<BoardReply> list = service.getDetail(boardNo);
		model.addAttribute("list", list);
		return "detail";
	}
//	글쓰기폼
	@RequestMapping(value="shop/freeregister", method = RequestMethod.GET)
	public String register() {
		return "register";
	}
//	글쓰기 저장
	@RequestMapping(value="shop/freeregister", method = RequestMethod.POST)
	public String register(BoardVO boardVO, HttpServletRequest request)throws Exception {
		request.setCharacterEncoding("utf-8");
		log.info("내용 : " + boardVO);
		int r = service.freeRegister(boardVO);
		return "redirect:list";
	}
	
	
//	글 수정 폼(기존데이터 전송- 글읽기)
	@RequestMapping(value="shop/freeupdate", method = RequestMethod.GET)
	public String update(@RequestParam("boardNo") int boardNo, Model model) throws Exception {
		BoardVO freeboard = service.freeDetail(boardNo);
		model.addAttribute("freeboard", freeboard);		
		return "update";
	}	
//	글 수정 저장
	@RequestMapping(value = "shop/freeupdate", method = RequestMethod.POST)
	public String update(BoardVO boardVO, RedirectAttributes rttr,HttpServletRequest request) throws Exception {
		request.setCharacterEncoding("utf-8");
		int r = service.freeUpdate(boardVO);
		// 수정에 성공하면 목록보기로 이동
		if (r > 0) {
			rttr.addFlashAttribute("msg", "수정에 성공 하였습니다.");
			return "redirect:list";
		}
		// 수정에 실패하면 수정보기 화면으로 이동
		return "redirect:update?bno=" + boardVO.getBoardNo();
	}
	
	@RequestMapping(value="shop/freedelete",method = RequestMethod.GET)
	public String delete(@RequestParam("boardNo") int boardNo, RedirectAttributes rttr) throws Exception {
		int r = service.freeDelete(boardNo);
		
		if(r > 0) {
			rttr.addFlashAttribute("msg","글삭제에 성공하였습니다.");
			return "redirect:list";
		}
		return "redirect:detail?bno=" + boardNo;
	} */
}
