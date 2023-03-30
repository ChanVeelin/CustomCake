package com.team.biz.dto;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class CartVO {
	private int cart_no;
	private String id;
	private int product_no;
	private String message;
	private String content;
	private String image;
	private int quantity;
	private String result;
	private Date indate;
}
