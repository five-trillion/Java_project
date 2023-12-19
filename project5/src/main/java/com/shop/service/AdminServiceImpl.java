package com.shop.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

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
import com.shop.mapper.AdminMapper;

import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class AdminServiceImpl implements AdminService {
	
	
	@Override
	public List<BoardVO> getBoardRanking() {
		return mapper.getBoardRanking();
	}

	@Override
	public List<SalesVO> getProdRanking() {
		return mapper.getProdRanking();
	}

	@Override
	public SalesVO getTodaySales() {
		return mapper.getTodaySales();
	}

	@Override
	public SalesVO getTodayJoin() {
		return mapper.getTodayJoin();
	}

	@Override
	public void UpdateUserDetail(UsersVO usersVo) {
		mapper.UpdateUserDetail(usersVo);
	}

	@Override
	public UsersVO getUserDetail(long userNo) {
		return mapper.getUserDetail(userNo);
	}

	@Override
	public void updateAnswer(AnswerVO answerVo) {
		mapper.updateAnswer(answerVo);
	}

	@Override
	public List<SalesVO> getSalesInfo() {
		return mapper.getSalesInfo();
	}

	@Override
	public void boardReviwDelete(long boRepNo) {
		mapper.boardReviwDelete(boRepNo);
	}

	@Override
	public AnswerVO getAnswer(long boardNo) {
		return mapper.getAnswer(boardNo);
	}

	@Override
	public void notiModify(BoardVO boardVo) {
		mapper.notiModify(boardVo);
	}

	@Override
	public boolean prodModify(ProductVO prodVo) {
		log.info("상품정보 변경 service 지나가는 중");
		return mapper.prodUpdate(prodVo) == 1;
	}
	
	@Override
	public List<BoardReplyVO> getBoardReview(long boardNo) {
		return mapper.getBoardReview(boardNo);
	}

	@Override
	public List<SalesVO> getJoinView() {
		return mapper.getJoinView();
	}

	@Override
	public boolean prodRemove(String prodNo) {
		log.info("상품 삭제 service 지나가는 중");
		return mapper.prodRemove(prodNo) == 1;
	}
	
	@Override
	public void prodRegister(ProductVO prodVo) {
		mapper.prodInsert(prodVo);
	}

	@Override
	public void boardDelete(long boardNo) {
		mapper.boardDelete(boardNo);
	}

	@Override
	public void notiWrite(BoardVO boardVo) {
		mapper.notiWrite(boardVo);
	}

	@Override
	public BoardVO reportBoard(long boardNo) {
		return mapper.reportBoard(boardNo);
	}

	@Override
	public void reportComplete(int repoNo) {
		mapper.reportComplete(repoNo);
	}

	@Override
	public BoardReplyVO reportBoRep(long boRepNo) {
		return mapper.reportBoRep(boRepNo);
	}

	@Override
	public ReviewReplyVO reportReviRep(long reviRepNo) {
		return mapper.reportReviRep(reviRepNo);
	}

	@Override
	public List<BoardVO> getBoardQna() {
		return mapper.getBoardQna();
	}

	@Override
	public List<ReportVO> getReport() {
		return mapper.getReport();
	}

	@Override
	public BoardVO getBoardDetail(long boardNo) {
		return mapper.getBoardDetail(boardNo);
	}

	@Override
	public void ansComplete(AnswerVO answerVo) {
		mapper.ansComplete(answerVo);
	}

	@Override
	public void userDelete(long userNo) {
		mapper.userDelete(userNo);
	}

	@Override
	public List<CodeVO> prodCodeInsert() {
		return mapper.prodCodeInsert();
	}

	@Autowired
	AdminMapper mapper;
	

	@Override
	public List<BoardVO> getBoard(String boardClass) {
		System.out.println("service 지나가는 중");
		return mapper.getBoard(boardClass);	
	}

	@Override
	public List<UsersVO> getUsers()  throws Exception {
		System.out.println("service 지나가는 중");
		return mapper.getUsers();
	}

	@Override
	public List<ProductVO> getListProd() {
		System.out.println("prodList service 지나가는중");
		return mapper.getListProd();
	}
	
	@Override
	public ProductVO getProd(String prodNo) {
		log.info("getProd service 지나가는중"+prodNo);
		return mapper.readProd(prodNo);
	}
	
	@Override
	public List<OrderDetailVO> getListOrederDetail() {
		log.info("orderdetail 지나가는중");
		return mapper.getListOrederDetail();
	}
	
	@Override
	public List<DeliveryVO> getListDelivery() {
		log.info("delovery 지나가는중");
		return mapper.getListDelivery();
	}
	@Override
	public List<OrderInfoVO> orderList() {
	    log.info("orderinfo 지나가는중");
	    List<OrderInfoVO> result = mapper.orderList();
	    log.info("OrderList Result: " + result);
	    return result;
	}
	
	@Override
    public void deliInfo(String orderNo, String deliInfo) {
        System.out.println("deliinfo service");
		mapper.deliInfo(orderNo, deliInfo);
    }
	
	@Override
	public List<OrderInfoVO> orderUnsetList() {
	    log.info("orderUnsetList 지나가는중");
	    List<OrderInfoVO> result = mapper.orderUnsetList();
	    log.info("OrderUnsetList Result: " + result);
	    return result;
	}
	
	public List<OrderInfoVO> adminOrderDetail(){
		log.info("orderDetail 지나가는중");
	    List<OrderInfoVO> result = mapper.adminOrderDetail();
	    log.info("adminOrderDetail Result: " + result);
	    return result;
	}
}
