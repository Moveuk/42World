package com.world.domain.minihome.vo;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class FriendVO {
	
	private int friendNo;
	private String friendTo;
	private String friendFrom;
	private String nicknameTo;
	private String nicknameFrom;
	private int accept;
	private String message;
	
}
