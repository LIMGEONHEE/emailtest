package com.itwill.semiproject.service;

import org.springframework.stereotype.Service;

import com.itwill.semiproject.dto.UserCreateDto;
import com.itwill.semiproject.dto.UserSignInDto;
import com.itwill.semiproject.repository.User;
import com.itwill.semiproject.repository.UserDao;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@Service
public class UserService {
    
    private final UserDao userDao;
    
    // 아이디 중복 체크: true - 중복되지 않은 아이디(사용 가능한 아이디), false - 중복된 아이디.
    public boolean checkUserid(String userId) {
        log.debug("checkUserid(user_id={})", userId);
        
        User user = userDao.selectByUserid(userId);
        if (user == null) { // userid가 일치하는 레코드가 없을 때(중복된 아이디가 없는 경우)
            return true;
        } else { // userid가 일치하는 레코드가 있을 때(아이디가 중복된 경우)
            return false;
        }
    }
    
    // 회원 가입 서비스
    public int create(UserCreateDto dto) {
        log.debug("create({})", dto);
        
        int result = userDao.insert(dto.toEntity());
        
        return result;
    }
    
    // 로그인 서비스
    public User read(UserSignInDto dto) {
	        log.debug("read(dto={})", dto);
	        
	        // 리포지토리 메서드를 호출해서, 아이디와 비밀번호가 일치하는 사용자가 있는 지 검색
	        User user = userDao.selectByUseridAndPassword(dto.toEntity());
	        log.debug("로그인 사용자 = {}", user);
	        
	        return user;
	    }
    
    // 이메일 중복 체크: true - 중복되지 않은 이메일(사용 가능한 이메일), false - 중복된 이메일.
    public boolean checkEmail(String userEmail) {
        log.debug("checkUserEmail(email={})", userEmail);
        
        User user = userDao.selectByUserEmail(userEmail);
        if (user == null) { // userEmail가 일치하는 레코드가 없을 때(중복된 이메일이 없는 경우)
            return true;
        } else { // userEmail가 일치하는 레코드가 있을 때(이메일가 중복된 경우)
            return false;
        }
    }
}
