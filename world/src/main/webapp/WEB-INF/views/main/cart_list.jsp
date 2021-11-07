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
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>

<script>               
    $(document).ready(function(){
 	   
     // 상품 전체선택  
     $("#allCheck").click(function () {
         var chk = $("#allCheck").prop("checked");
         if (chk) {
             $(".chkbox").prop("checked", true);
             itemSum();
         } else {
             $(".chkbox").prop("checked", false);
             itemSum();
         }
     });
     
    // 전체선택 
    $(".chkbox").click(function () {
        $("#allCheck").prop("checked", false);
    });
    
   
	
    
   
    // 결제 버튼 클릭시   
	 $("#btnOrderItems").click(function(){			         
	    var count = $(".chkbox").length;				        
	    var orderListArr = [];    // 장바구니 담아줄 배열
	    var chkCnt = 0;			   // 선택한 체크박스 개수
	    
	 
	    
	    for (var i = 0; i < count; i++) {
	         if ($(".chkbox")[i].checked == true) {
	        	
	        	chkCnt = chkCnt+1;
	            var cartName = $("#cartName_"+i).val();
	            var price = $("#price_"+i).val();
	            var category = $("#category_"+i).val();
	            var fileName = $("#fileName_"+i).val();
	            
	            var friendFrom = $("[id=friendFrom]:selected").val();
	            
	            var orderList = cartName + "^@" + price + "^@" + category + "^@" + fileName  + "^@" + friendFrom;
	            console.log(orderList);
	            
	            orderListArr.push(orderList);
	        }
	    }
    
	    if(chkCnt==0) {
	    	alert("선택된 값이 없습니다.");
	    	return;
	    } else {
	    	$("#orderListArr").val(orderListArr);  
	  		//console.log(orderListArr.length)
	    	$('#formm').submit();
	    }
	 
		});
  });
     
  // 금액 총 합계   
  function itemSum() {
     var str = "";
     var sum = 0;
     var count = $(".chkbox").length;
     
     for (var i = 0; i < count; i++) {
          if ($(".chkbox")[i].checked == true) {
             sum += parseInt($(".chkbox")[i].value);     
         }
      var balance = $("span#myDotory").text() - sum;
      
      $("a#balance").text(balance);
     }					                
     $("#total_sum").html(sum);					                 
  }
  
</script>

<body>
<form name="formm" id="formm" action="/cart/buyItems" method="post">
<input type="hidden" name="orderListArr" id="orderListArr" >

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
            <th><input type="checkbox" name="allCheck" id="allCheck"/>전체선택</th>
           
            <br><br>
            <table class="cart_main_content_table" >
                    <tr>
                        <th>선택</th>
                        <th colspan="3">상품</th>
                        <th>상품금액</th>
                    </tr>
                    <!-- 여기서부터 한 묶음 -->

                    <c:forEach items="${cartList }" var="cartVO" varStatus="status">
	                    <tr >
	                        <td rowspan="2" class="cart_main_content_table_td_check" ><input class="chkbox" type="checkbox" onClick="itemSum()" id="price_${status.index}" value="${cartVO.price}">
	                        <input type="hidden" name="cartName"  id="cartName_${status.index}" value="${cartVO.name}">
	                    	<input type="hidden" name="fileName"  id="fileName_${status.index}" value="${cartVO.fileName}">
	                        </td>
	                        <td rowspan="2" class="cart_main_content_table_td_productimg" ><img class= "cart_main_content_table_productimg" src="${pageContext.request.contextPath}/resources/img/${cartVO.category }/${cartVO.fileName}"></td>
	                        <td colspan="2" style="border:none;">${cartVO.name}</td>
	                        <td rowspan="2" class="cart_main_content_table_td_price" style="color: rgb(161, 104, 104);" ><img class= "cart_main_content_table_dotoriimg" src="${pageContext.request.contextPath}/resources/img/dotori.png">${cartVO.price } 도토리</td>
	                    </tr>
	                    <tr>
	                        <td>카테고리 &nbsp; <input type="hidden" name="category" id="category_${status.index}" value="${cartVO.category }">${cartVO.category }</td>
	                        
	                    </tr>
	                 </c:forEach>

            </table>

            <div class = "cart_main_content_footer">
                <div class = "cart_main_content_footer_friend">
                    <p>일촌에게 선물을 해보세요.</p>

                    <input type="checkbox" class="chkbox2" id="chkbox2" name="chkbox2" value="1"><label>일촌에게 선물하기</label>
                    <div>
                        
                        <select class="cart_main_content_footer_friend_select" id="giftTo" name="giftTo">
                            
                            <c:forEach items="${myFriendName }" var="name" >
								<option id="friendFrom" name="friendFrom" value="${name.friendFrom }">${name.message } (${name.nicknameFrom})</option>
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
                                <td style="font-weight: 600;"><span id="myDotory">${myDotory }</span> 도토리</td>
                            </tr>
                            <tr>
                                <td style="color: rgb(97, 97, 97);" >총 상품금액</td>
                                <td style="font-weight: 600;"><a id="total_sum"></a> <a>도토리</a></td>
                            </tr>
                            <tr>
                                <td  style="font-weight: 800; font-size: 15px; height: 30px;" >잔여 도토리</td>
                                <td>
                                    <a id="balance" style="color: red; font-size: 25px; font-weight: 700;" > </a>
                                    <a style="font-weight: 700;" >도토리</a>
                                </td>
                            </tr>
                        </table>
                    </div>
                    
                    <!-- 20211106.KHJ: submit type으로 하면 무조건 자바로 보내짐. button 타입으로 수정함 -->
                    <!-- <input class="cart_main_content_footer_purchase_button" type="submit" value = "결제"> -->
                    <input class="cart_main_content_footer_purchase_button" type="button" value="결제" id="btnOrderItems">
                   
                </div>
                 
            </div>

        </div>
    </div>
</form>
</body>
</html>