package com.stray.spring.service;

import com.stray.spring.dto.UserVO;

public interface AuthService {
	
	public int checkId(String u_id);
	
	public void createAccount(UserVO uvo);
	public int signIn(String id, String pw);
	public UserVO getUser(String u_id);
}
