<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
						<div class="left">
							<div class="leftContent">
								<img src="/resources/img/logo.jpg" name="mainImg" id="mainImg" alt="mainImg">
								<textarea name="self" id="self" rows="5" cols="23" readonly>안녕하s세요. 반갑습니다. 42좋은 42월드입니다. 행복한 하루 되세요.</textarea>
								<input type="button" name="leftEdit" id="leftEdit" value="EDIT" onclick="edit()">
								<hr style="width: 90%">
								<input type="text" name="name" id="name" value="피효정" size="2" readonly>
								<!-- <input type="text" name="gender" id="gender" value="여" size="1" readonly> -->
								<img src="/resources/img/woman.png" name="gender" id="gender" alt="genderImg">
								<input type="text" name="birth" id="birth" value="0000-00-00" size="6" readonly>
								<input type="button" name="chkFriendAccept" id="chkFriendAccept" value="일촌 신청 확인"
									onclick="chkFreind(); return false">
								<input type="button" name="friendRandom" id="friendRandom" value="랜덤 미니홈피 가기">
								<select id="friendWave" name="friendWave">
									<option value="none">일촌 파도타기</option>
									<option value="친구주소">친구이름</option>
									<option value="친구주소">친구이름</option>
									<option value="친구주소">친구이름</option>
									<option value="친구주소">친구이름</option>
									<option value="친구주소">친구이름</option>
								</select>
							</div>
						</div>
						<div class="right">
							<div class="rightContent">
								<div id="tab6">
									<!-- 내가 방명록 작성할 때 - 시작 -->
									<div class="visitor_wrap">
										<div class="visitor_top">
											<table>
												<tr>
													<td class="visitor_top_table_left">▶방명록알림기능 사용중</td>
													<td class="visitor_top_table_right">
														<button class="visitor_top_btn1" onclick="">글꼴설정</button>
														<button class="visitor_top_btn2" onclick="">방명록관리</button>
													</td>
												</tr>
											</table>
										</div>
										<div class="visitor_content">
											<div class="visitor_content_minimi">
												<img src="/resources/img/minimi2.png" alt="미니미">
											</div>
											<div class="visitor_content_text">
												<textarea>내용 작성하는 공간</textarea>
											</div>
											<div class="visitor_content_bottom">
												<table>
													<tr>
														<td class="visitor_content_bottom_td_left">
															미니미
															<a href="#">[설정]</a>
														</td>
														<td class="visitor_content_bottom_td_right">
															<input type="checkbox">
															텍스티콘?&nbsp;&nbsp;
															<button>확인</button>
														</td>
													</tr>
												</table>
											</div>
										</div>
										<!-- 내가 방명록 작성할 때 - 끝-->
										<br>
										<br>
										<!-- 다른 사람이 쓴 방명록 -->
										<div class="visitor_top2">
											<table class="visitor_top2_table">
												<tr>
													<td class="visitor_top2_table_left">
														<span>NO.</span>
														visitorBookNo&nbsp;&nbsp;
														<a href="#">
															name
															<img src="/resources/img/house.png">
														</a>
														&nbsp;&nbsp;
														<p>(date)</p>
													</td>
													<td class="visitor_top2_table_right">
														<ul class="visitor_top2_ul">
															<li>
																<a href="#">비밀로 하기</a>
															</li>
															<li>|</li>
															<li>
																<a href="#">삭제</a>
															</li>
															<li>|</li>
															<li>
																<a href="#">신고</a>
															</li>
														</ul>
													</td>
												</tr>
											</table>
										</div>
										<div class="visitor_content2">
											<div class="visitor_content2_minimi">
												<img src="/resources/img/minimi2.png" alt="미니미">
											</div>
											<div class="visitor_content2_text">
												<div>
													<textarea>칼라릴리~!!</textarea>
												</div>
											</div>
											<div class="visitor_content2_bottom">
												<textarea></textarea>
												<button>확인</button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>