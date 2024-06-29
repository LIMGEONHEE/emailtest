package com.itwill.semiproject.config;

import lombok.Data;

@Data
public class MailProperties {

	private String host;
	private String port;
	private String sender;
	private String username;
	private String password;
}
