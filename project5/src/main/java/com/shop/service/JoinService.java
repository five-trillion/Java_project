package com.shop.service;

import java.util.List;

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
	
	// 반려견 정보 조회
	public List<PetVO> getPet(long userNo) throws Exception;
		
	// 회원 아이디 찾기 
	public UsersVO searchIdByEmail(UsersVO user) throws Exception;
	public UsersVO searchIdByPhone(UsersVO user) throws Exception;
	
	// 비밀번호 찾기 - 새로운 임시 비밀번호 생성 및 메일 전송
    public void sendTempPw(String userId, String userName, String email) throws Exception;
    public void updateTempPw(String userId, String tempPw) throws Exception;

    // 아이디, 이름, 이메일 일치 여부 확인
    public boolean isValidUser(String userId, String userName, String email);


	

}
