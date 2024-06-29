package com.itwill.semiproject.repository;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

//데이터베이스 테이블 users 테이블의 모델 객체
@Data
@NoArgsConstructor @AllArgsConstructor @Builder
public class User {
	private Integer userKey; // primary key
	private String userName; // 회원 이름
	private String userId; // 로그인 아이디
	private String userPassword; // 로그인 비밀번호
	private String userEmail; // 이메일
	private String userPhone; // 핸드폰
	private String userRole; // 관리자 or 회원
}
