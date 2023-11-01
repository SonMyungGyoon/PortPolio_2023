package com.stray.spring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.stray.spring.dto.UserVO;
import com.stray.spring.mapper.AuthMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class AuthServiceImpl implements AuthService {
	
	@Setter(onMethod_ = @Autowired)
	private AuthMapper mapper;

	@Override
	public int checkId(String u_id) {
		return mapper.checkId(u_id);
	}
	@Override
	public void createAccount(UserVO uvo) {
		mapper.createAccount(uvo);
	}
	@Override
	public int signIn(String id, String pw) {
		return mapper.signIn(id, pw);
	}
	@Override
	public UserVO getUser(String u_id) {
		return mapper.getUser(u_id);
	}
}
