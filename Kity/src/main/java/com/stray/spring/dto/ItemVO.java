package com.stray.spring.dto;

import lombok.Data;

@Data
public class ItemVO {
	private long id; 			//고유번호
	private String name;		//상품이름
	private int price;			//가격
	private int stock;			//재고
	private boolean isSoldout;	//매진여부
	private int count;			//팔린 갯수
	private String text;		//상품 설명
	private String filename;	//상품 사진  파일이름
	private String filepath;	//상품 사진 경로
}
