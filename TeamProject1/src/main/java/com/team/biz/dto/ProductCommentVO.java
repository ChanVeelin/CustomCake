package com.team.biz.dto;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ProductCommentVO {
	private int comment_no;
	private String id;
	private int product_no;
	private String content;
	private Date comment_regdate;
	private int score;
	private String image;
}
