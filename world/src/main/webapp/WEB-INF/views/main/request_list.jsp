<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/request_friend1.css?ver=1.1"  >


</head>
<body>
    <div class="request_friend1">
        <p class="request_friend1_title" >일촌신청 목록</p>
        <a class="request_friend1_subtitle" >친구에게 일촌신청을 받았습니다.</a><br>
        <a class="request_friend1_subtitle" >(자세한 사항은 이름을 클릭 시 확인가능합니다.)</a>
        <form id="frmm" method="post" action="checkRequest">
            <table >
                <tr>
                    <td>보낸이</td>
                </tr>
                <c:forEach items="${requestList }" var="friendVO">
                    <tr>
                        <td><a href="#" onclick="document.getElementById('frmm').submit();">${friendVO.friendFrom }</a></td>
                        <input type="hidden" value="${friendVO.friendFrom}" name="friendFrom">
                        <input type="hidden" value="${friendVO.friendTo}" name="friendTo">
                        
                    </tr>
                </c:forEach>
            </table>
        </form>
    </div>
</body>
</html>