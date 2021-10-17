package com.world.domain.main.vo;

import java.sql.Timestamp;

import org.springframework.web.multipart.MultipartFile;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MemberVO {
	
	private int seq;
	private String id;
	private String pwd;
	private String name;
	private String email;
	private String zipNum;
	private String address;
//	private String addr1;
//	private String addr2;
	private String phone;
	private String useyn;
	private Timestamp indate;
	
	private String searchCondition;
	private String searchKeyword;
	private MultipartFile uploadFile;
	
	// toString 필요없음 : @Data에 다 포함. 오른쪽 outline 탭에 어떤 함수가 사용가능한지 볼 수 있음.
}
