package com.shop.service;


import java.time.LocalDateTime;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.shop.domain.PetVO;
import com.shop.domain.UsersVO;
import com.shop.mapper.JoinMapper;

@Service
public class JoinServiceImpl implements JoinService {
	
	@Autowired
	JoinMapper joinmapper;
	
	@Override
	public void insertUser(UsersVO user) throws Exception {
		joinmapper.insertUser(user);
	}
	
	@Override
	public int idCheck(String userId) throws Exception {
		return joinmapper.idCheck(userId);
	}
	
	@Override
	public UsersVO loginUser(UsersVO user) throws Exception {
		return joinmapper.loginUser(user);
	}

	@Override
	public List<PetVO> getPet(long userNo) throws Exception {
		return joinmapper.getPet(userNo);
	}


	@Override 
	public void updateUser(UsersVO user) throws Exception {
		joinmapper.updateUser(user);
	}
	
	@Override
	public void deleteUser(String userId) throws Exception {
	    joinmapper.deleteUser(userId);
	}
	
	@Override
	public void insertPet(PetVO pet) throws Exception {
		joinmapper.insertPet(pet);
	}
	
	@Override
	public UsersVO searchIdByEmail(UsersVO user) throws Exception {
        return joinmapper.searchIdByEmail(user);
	}
	@Override
	public UsersVO searchIdByPhone(UsersVO user) throws Exception {
        return joinmapper.searchIdByPhone(user);
	}
	
	@Override
    public void sendTempPw(String userId, String userName, String email) throws Exception {
        // 새로운 임시 비밀번호 생성
        String tempPw = generateTempPw();
        // 생성된 임시 비밀번호를 데이터베이스에 업데이트
        joinmapper.updateTempPw(userId, tempPw);
        // 이메일 전송
        sendPw(userName, email, tempPw);
    }

    @Override
    public void updateTempPw(String userId, String tempPw) throws Exception {
        joinmapper.updateTempPw(userId, tempPw);
    }

    @Override
    public boolean isValidUser(String userId, String userName, String email) {
        // 아이디, 이름, 이메일이 일치하는지 확인하는 로직을 추가
        return joinmapper.isValidUser(userId, userName, email);
    }

    private String generateTempPw() {
       return LocalDateTime.now().toString().replaceAll("[^a-zA-Z0-9]", "");
    }

    private void sendPw(String userName, String email, String tempPw) {
        // 이메일 전송 로직을 추가 (JavaMailSender 등을 사용)
    }

}
