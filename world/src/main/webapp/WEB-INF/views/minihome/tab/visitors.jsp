<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<script src="${pageContext.request.contextPath}/resources/js/minihome/visitors.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/visitors.css">
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
		<input type="button" name="chkFriendAccept" id="chkFriendAccept" value="일촌 신청 확인" onclick="chkFreind(); return false">
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
					<form id="insertVisitorsLogForm" action="visitors/insertVisitorsLog" method="post">
						<input type="hidden" name="ownerId" value="${session.userId }">
						<input type="hidden" name="writerId" value="${session.userId }">
						<div class="visitor_content_minimi">
							<img src="/resources/img/minimi/minimi2.png" alt="미니미">
						</div>
						<div class="visitor_content_text">
							<textarea name="content">내용 작성하는 공간</textarea>
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
										<button onclick="">확인</button>
										<input class="submit" type="submit" value="확인">
									</td>
								</tr>
							</table>
						</div>
					</form>
				</div>
				<%-- visitors List --%>
				<c:forEach items="${visitorLogList }" var="visitorLog" varStatus="status">
					<br>
					<br>
					<div class="visitor_top2">
						<div class="visitor_visitorLogNo">NO.&nbsp;&nbsp;${fn:length(visitorLogList) - status.index }</div>
						<div class="visitor_writerId">
							${visitorLog.writerId }
							<img src="/resources/img/house.png">
						</div>
						<div class="visitor_writeDate">${visitorLog.writeDate }</div>
						<div class="visitor_makeSecretState">
							<a href="#">비밀로 하기</a>
							&nbsp;&nbsp;|
						</div>
						<div class="visitor_deleteVisitorLog">
							<form action="visitors/deleteVisitorLog" method="post">
								<input type="hidden" name="visitorLogNo" value="${visitorLog.visitorLogNo }">
								<a class="visitor_delete">삭제</a>
								&nbsp;&nbsp;|
							</form>
						</div>
						<div class="visitor_reportVisitorLog">
							<a href="#">신고</a>
						</div>

					</div>
					<div class="visitor_content2">
						<div class="visitor_content2_minimi">
							<img src="/resources/img/minimi/minimi2.png" alt="미니미">
						</div>
						<div class="visitor_content2_text">
							<div>
								<textarea>${visitorLog.content }</textarea>
							</div>
						</div>
						<div class="visitor_content2_bottom">
							<textarea></textarea>
							<button>확인</button>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
</div>