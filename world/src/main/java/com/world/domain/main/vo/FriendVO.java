package com.world.domain.main.vo;

public class FriendVO {
	private int friendNo;
	private String friendTo;
	private String friendFrom;
	private String nicknameTo;
	private String nicknameFrom;
	private int accept;
	private String message;

	public int getFriendNo() {
		return friendNo;
	}

	public void setFriendNo(int friendNo) {
		this.friendNo = friendNo;
	}

	public String getFriendTo() {
		return friendTo;
	}

	public void setFriendTo(String friendTo) {
		this.friendTo = friendTo;
	}

	public String getFriendFrom() {
		return friendFrom;
	}

	public void setFriendFrom(String friendFrom) {
		this.friendFrom = friendFrom;
	}

	public String getNicknameTo() {
		return nicknameTo;
	}

	public void setNicknameTo(String nicknameTo) {
		this.nicknameTo = nicknameTo;
	}

	public String getNicknameFrom() {
		return nicknameFrom;
	}

	public void setNicknameFrom(String nicknameFrom) {
		this.nicknameFrom = nicknameFrom;
	}

	public int getAccept() {
		return accept;
	}

	public void setAccept(int accept) {
		this.accept = accept;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

}
