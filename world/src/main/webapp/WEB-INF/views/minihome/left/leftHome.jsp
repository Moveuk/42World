<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
								<img src="/resources/img/logo.jpg" name="mainImg" id="mainImg"
									alt="mainImg">
								<textarea name="self" id="self" rows="5" cols="23" readonly>안녕하s세요. 반갑습니다. 42좋은 42월드입니다. 행복한 하루 되세요.</textarea>
								<input type="button" name="leftEdit" id="leftEdit" value="EDIT"
									onclick="edit()">
								<hr style="width: 90%">
								<input type="text" name="name" id="name" value="피효정" size="2"
									readonly>
								<!-- <input type="text" name="gender" id="gender" value="여" size="1" readonly> -->
								<img src="/resources/img/woman.png" name="gender" id="gender"
									alt="genderImg">
								<input type="text" name="birth" id="birth" value="0000-00-00"
									size="6" readonly>
								<input type="button" name="chkFriendAccept" id="chkFriendAccept"
									value="일촌 신청 확인" onclick="chkFreind(); return false">
								<input type="button" name="friendRandom" id="friendRandom"
									value="랜덤 미니홈피 가기">
								<select id="friendWave" name="friendWave">
									<option value="none">일촌 파도타기</option>
									<option value="친구주소">친구이름</option>
									<option value="친구주소">친구이름</option>
									<option value="친구주소">친구이름</option>
									<option value="친구주소">친구이름</option>
									<option value="친구주소">친구이름</option>
								</select>