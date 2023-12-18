package com.shop.service;

import com.shop.domain.PetVO;
import com.shop.domain.UsersVO;

public interface JoinService {
	// 회원가입
	public void insertUser(UsersVO user) throws Exception;
	
	// 아이디 중복 검사
	public int idCheck(String userId) throws Exception;
	
	// 로그인 
	public UsersVO loginUser(UsersVO user) throws Exception;
	
	// 회원정보 수정
	public void updateUser(UsersVO user) throws Exception;
	
	// 회원 탈퇴
	public void deleteUser(String userId) throws Exception;
	
	// 반려견 정보 기입
	public void insertPet(PetVO pet) throws Exception;
	
	// 회원 아이디 찾기 
	public UsersVO searchIdByEmail(String userName, String email) throws Exception;
	public UsersVO searchIdByPhone(String userName, String phone) throws Exception;
}
