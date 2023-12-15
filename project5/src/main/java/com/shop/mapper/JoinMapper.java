package com.shop.mapper;

import java.util.List;

import com.shop.domain.PetVO;
import com.shop.domain.UsersVO;

public interface JoinMapper {
	// 회원가입
	public void insertUser(UsersVO user) throws Exception;
	
	// 로그인
	public UsersVO loginUser(UsersVO user) throws Exception;
	
	// 아이디 중복 검사
	public int idCheck(String userId);
	
	// 회원정보 수정
	public void updateUser(UsersVO user) throws Exception;
	
	// 반려견 정보 기입
	public void insertPet(PetVO pet) throws Exception;
	
	// 반려견 정보 조회
	public List<PetVO> getPet(long userNo) throws Exception;
}
