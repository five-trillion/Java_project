package com.shop.domain;

import java.util.Date;

import lombok.Data;

@Data
public class AnswerVO {
	private long boardNo; //답변의 해당 게시물
	private String ansTitle; //답변제목
	private String ansContent; //답변내용
	private Date ansReg; //답변등록일
}
