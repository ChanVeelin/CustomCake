package com.team.biz.mail;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class Email {

	  private String subject;
	   private String content;
	   private String receiver;
	
}
