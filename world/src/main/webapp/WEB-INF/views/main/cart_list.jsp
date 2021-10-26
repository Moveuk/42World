<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="UTF-8">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/cart.css "  >

</head>
<body>

    <div class = "cart_main">
        <ul class="cart_main_tabs">
            <li>
                <div>
                    <a href="#" class="cart_main_tabs_title">장바구니</a>
                    <a href="#" class="cart_main_tabs_count" style="color:coral;" >${cartListCount }</a>
               </div>
            </li>
        </ul>
        
        <div class="cart_main_content">
            <a>장바구니</a>
            <br><br>
            <table class="cart_main_content_table" >
                    <tr>
                        <th>선택</th>
                        <th colspan="3">상품</th>
                        <th>상품금액</th>
                    </tr>
                    <!-- 여기서부터 한 묶음 -->
                    
                    <c:forEach items="${cartList }" var="cartVO">
	                    <tr >
	                        <td rowspan="2" class="cart_main_content_table_td_check" ><input type="checkbox"></td>
	                        <td rowspan="2" class="cart_main_content_table_td_productimg" ><img class= "cart_main_content_table_productimg" src="${pageContext.request.contextPath}/resources/img/${cartVO.category }/${cartVO.name}.gif"></td>
	                        <td colspan="2" style="border:none;">${cartVO.name}</td>
	                        <td rowspan="2" class="cart_main_content_table_td_price" style="color: rgb(161, 104, 104);" ><img class= "cart_main_content_table_dotoriimg" src="/img/dotori.png">${cartVO.price } 도토리</td>
	                    </tr>
	                    <tr>
	
	                        <td>카테고리</td>
	                        <td>도토리 가격</td>
	                    </tr>
	                 </c:forEach>

                    




            </table>

            <div class = "cart_main_content_footer">
                <div class = "cart_main_content_footer_friend">
                    <p>일촌에게 선물을 해보세요.</p>

                    <input type="checkbox"><label>일촌에게 선물하기</label>
                    <div>
                        
                        <select class="cart_main_content_footer_friend_select">
                            
                            <c:forEach items="${myFriendName }" var="name">
								<option value="id">${name.message } (${name.nicknameFrom})</option>
							</c:forEach>
					
                        </select>
                    </div>
                </div>
                <div class = "cart_main_content_footer_purchase">
                    <a>최종결제</a>
                    <div class="cart_main_content_footer_purchase_div">
                        <table class="cart_main_content_footer_purchase_div_table">
                            <tr>
                                <td style="color: rgb(97, 97, 97);">보유중 도토리</td>
                                <td style="font-weight: 600;">300 도토리</td>
                            </tr>
                            <tr>
                                <td style="color: rgb(97, 97, 97);" >총 상품금액</td>
                                <td style="font-weight: 600;">120 도토리</td>
                            </tr>
                            <tr>
                                <td  style="font-weight: 800; font-size: 15px; height: 30px;" >잔여 도토리</td>
                                <td>
                                    <a style="color: red; font-size: 25px; font-weight: 700;">180</a>
                                    <a style="font-weight: 700;" >도토리</a>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <input class="cart_main_content_footer_purchase_button" type="button" value = "결제">
                </div>
            </div>

        </div>
    </div>

</body>
</html>