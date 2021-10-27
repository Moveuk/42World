<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>내 아이템 목록</title>
        <style>
            *{
                padding:0px; margin:0px;
            }

            .myItem_main table{
                width:70%;
                margin-left: auto;
                margin-right: auto;
                border-top:1px solid #868686; 
                border-collapse: collapse;  
            }

            .myItem_main table th{
                border-bottom: 1px solid #868686;
                color:#5f5e5e;
                padding:10px;
            }
            .myItem_main table td{
                border-bottom:1px solid #cac9c9;
                text-align: center;
                padding:10px;
                color:#868686;
            }
            
            .myItem_main_td_date{
                color:rgb(134, 198, 211);
            }

            .myItem_main_td_price{
                color:rgb(151,86,53);
            }

            .myItem_main_td_use{
                height:30px;
                padding-top: 7px;
                color:white;
                font-size: 14px;
                background: linear-gradient( to bottom, rgb(250, 156, 79), rgb(248, 147, 64) );
                border-radius: 7px;
            }

            .myItem_main_td_no{
                height:30px;
                padding-top: 7px;
                color:white;
                font-size: 14px;
                background: linear-gradient( to bottom, rgb(190, 189, 188), rgb(126, 125, 124) );
                border-radius: 7px;
            }

            
        </style>
    </head>
    <body>
        <div class="myItem_wrap">
            <div class="myItem_title">
                <h2>내 아이템 목록</h2>
            </div>
            <div class="myItem_main">
                <table>
                    <!--아이템 목록 컬럼 뜨는 곳-->
                    <tr>
                        <th>구입(선물) 날짜</th>
                        <th>구매자</th>
                        <th>구분</th>
                        <th>카테고리</th>
                        <th>상품명</th>
                        <th>파일</th>
                        <th>가격</th>
                        <th>사용여부</th>
                    </tr>
                    <!--여기부터 실제 아이템 목록 뜨는 곳-->
              
  			   <c:forEach items="${itemList}" var="itemVO">
                    <tr>
                        <td class="myItem_main_td_date">${itemVO.buydate }</td>
                        <td>${itemVO.memberNo }</td>
                        <c:choose>
	                        <c:when test="${itemVO.division  == 1}">
	                      	  <td>구매</td>
	                        </c:when>
	                        <c:when test="${itemVO.division  == 2}">
	                     	   <td>선물</td>
	                        </c:when>
                        </c:choose>
                        <td>${itemVO.category }</td>
                        <td>${itemVO.name }</td>
                        <td>${itemVO.filename }</td>
                        <td class="myItem_main_td_price">
                            <img src="${pageContext.request.contextPath}/resources/img/dotori.png">${itemVO.price }
                        </td>
                        <td>
                        <c:choose>
	                        <c:when test="${itemVO.giftstate  == 1}">
	                        	<p class="myItem_main_td_use">미사용</p>
	                       	</c:when>
	                       	<c:when test="${itemVO.giftstate  == 2}">
	                        	<p class="myItem_main_td_use">사용중</p>
	                       	</c:when>
	                    </c:choose>   	
                        </td>
                    </tr>
 			  </c:forEach>
                </table>
            </div>
        </div>
    </body>
</html>