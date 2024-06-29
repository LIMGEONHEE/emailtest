package com.itwill.semiproject.dto;

import com.itwill.semiproject.repository.User;

import lombok.Data;

@Data
public class UserSignInDto {
	private String userId;
	private String userPassword;
	
	public User toEntity() {
		return User.builder()
				.userId(userId)
				.userPassword(userPassword)
				.build();
	}
}