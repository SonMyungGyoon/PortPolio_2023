package com.stray.spring.mapper;

import org.apache.ibatis.annotations.Param;

import com.stray.spring.dto.UserVO;

public interface AuthMapper {
	//
	public int checkId(@Param("u_id")String u_id);
	
	public void createAccount(UserVO uvo);
	
	public int signIn(@Param("id")String id, @Param("pw")String pw);
	
	public UserVO getUser(@Param("u_id")String u_id);
}
