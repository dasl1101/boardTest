package com.boardTest.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class BoardDTO {
	private int num;
	private String writer;
	private String email;
	private String subject;
	private String passwd;
	private String reg_date;
	private int readcount;
}
