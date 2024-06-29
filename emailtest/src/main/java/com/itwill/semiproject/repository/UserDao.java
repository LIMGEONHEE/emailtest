package com.itwill.semiproject.repository;

public interface UserDao {
	
	User selectByUserid(String userId);
    int insert(User user);
    User selectByUseridAndPassword(User user);
    User selectByUserEmail(String userEmail);
}
