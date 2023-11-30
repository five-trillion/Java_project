package com.shop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.domain.BoardVO;
import com.shop.domain.ProductVO;
import com.shop.mapper.ShopMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@AllArgsConstructor
public class ShopServiceImpl implements ShopService {

	@Autowired
	ShopMapper mapper;
	
	@Override
	public List<BoardVO> freepopList() throws Exception {
		// TODO Auto-generated method stub
		try {
			System.out.println("=====Service.freepopList=====");
			return mapper.freepopList();
		} catch (Exception e) {
		      log.error("Error fetching freelist", e);
		      return null;
		}
	}

	@Override
	public BoardVO freeDetail(int boardNo) throws Exception {
		// TODO Auto-generated method stub
		return mapper.freeDetail(boardNo);
	}

	@Override
	public int updateFreeBoardCnt(int boardNo) throws Exception {
		// TODO Auto-generated method stub
		return mapper.updateFreeBoardCnt(boardNo);
	}

	@Override
	public int freeRegister(BoardVO boardVO) throws Exception {
		// TODO Auto-generated method stub
		return mapper.freeRegister(boardVO);
	}

	@Override
	public int freeUpdate(BoardVO boardVO) throws Exception {
		// TODO Auto-generated method stub
		return mapper.freeUpdate(boardVO);
	}

	@Override
	public int freeDelete(int boardNo) throws Exception {
		// TODO Auto-generated method stub
		return mapper.freeDelete(boardNo);
	}
	
	@Override
	public List<ProductVO> prodList() throws Exception{
		try {
			System.out.println("=====Service.prodList=====");
			return mapper.prodList();
		} catch (Exception e) {
		      log.error("Error fetching prodlist", e);
		      return null;
		}
	}
	
	@Override
	public ProductVO prodDetail(String prodNo) throws Exception{
		try {
			System.out.println("=====Service.prodDetail=====");
			return mapper.prodDetail(prodNo);
		} catch (Exception e) {
		      log.error("Error fetching proddetail", e);
		      return null;
		}
	}
	
	@Override
	public int updateProdCnt(String prodNo) throws Exception {
		try {
			System.out.println("=====Service.prodcnt=====");
			return mapper.updateProdCnt(prodNo);
		} catch (Exception e) {
		      log.error("Error fetching prodcnt", e);
		      return 0;
		}
	}
	
	@Override
	public List<ProductVO> prodpopList() throws Exception {
		try {
			System.out.println("=====Service.prodpopList=====");
			return mapper.prodpopList();
		} catch (Exception e) {
		      log.error("Error fetching prodpoplist", e);
		      return null;
		}
	}
	
}
