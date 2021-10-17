<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script type="text/javascript">
	function go_search() {
		document.frm.action = "admin_member_list.do";
		document.frm.submit();
	}
</script>
<article>
	<h1>회원리스트</h1>
	<form name="frm" method="post">
		<table style="float: right;">
			<tr>
				<td>
					회원 이름
					<input type="text" name="key">
					<input class="btn" type="button" value="검색" onclick="go_search()">
				</td>
			</tr>
		</table>
		<br>
		<table id="orderList">
			<tr>
				<th>아이디</th>
				<th>이름</th>
				<th>이메일</th>
				<th>성별</th>
				<th>제목</th>
				<th>부제목</th>
			</tr>
			<c:forEach items="${memberList}" var="memberVO">
				<tr>
					<td>${memberVO.userid}</td>
					<td>${memberVO.name}</td>
					<td>${memberVO.email}</td>
					<td>${memberVO.gender}</td>
					<td>${memberVO.title}</td>
					<td>${memberVO.subtitle}</td>
				</tr>
			</c:forEach>
		</table>
	</form>
</article>
</body>
</html>
