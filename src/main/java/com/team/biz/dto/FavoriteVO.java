package com.team.biz.dto;

import java.util.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class FavoriteVO {
	
	private String id;
	private int product_no;
	private Date favorite_regdate;

}
