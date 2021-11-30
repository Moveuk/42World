package com.world.domain.main.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class FriendVO {
	private int friendNo;
	private int friendTo;
	private int friendFrom;
	private String nicknameTo;
	private String nicknameFrom;
	private int accept;
	private String message;

}
