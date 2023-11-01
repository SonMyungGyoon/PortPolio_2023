package com.stray.spring.dto;

import lombok.Data;

@Data
public class UserVO {
	private int u_no;				//유저 고유 번호
	private String u_id; 			//유저 id
	private String u_pw; 			//유저 pw
	private String u_name;			//유저 이름
	private String u_email;			//유저 이메일
	private String u_phone;			//유저 전화번호
	private String u_addrnum;	//유저 주소 우편번호
	private String u_addrstreet;	//유저 주소 우편번호
	private String u_addrdetail;	//유저 주소 상세
	private int u_point;			//유저 가지고 있는 포인트
}
