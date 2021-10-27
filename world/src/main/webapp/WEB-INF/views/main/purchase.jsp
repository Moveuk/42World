<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="UTF-8">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/purchase.css">    
    
  <!--   <script type="text/javascript" src="js/jquery.js"></script> -->
	<script type="text/javascript">
    
    $(document).ready(function(){        
        
    });
        
    /** 게시판 - 목록 페이지 이동 */

    
    /** 게시판 - 작성  */
    function insertCart(){
 
        var boardSubject = $("#name").val();
        var boardContent = $("#price").val();
            

        var yn = confirm("게시글을 등록하시겠습니까?");        
        if(yn){
                
            $.ajax({    
                
               url      : "/insertCart",
               data     : $("#boardForm").serialize(),
               dataType : "JSON",
               cache    : false,
               async    : true,
               type     : "POST",    
               success  : function(obj) {
                    insertBoardCallback(obj);                
                },           
               error    : function(xhr, status, error) {}
                
            });
        }
    }
    
    /** 게시판 - 작성 콜백 함수 */
    function insertBoardCallback(obj){
    
        if(obj != null){        
            
            var result = obj.result;
            
            if(result == "SUCCESS"){                
                alert("게시글 등록을 성공하였습니다.");                
                goBoardList();                 
            } else {                
                alert("게시글 등록을 실패하였습니다.");    
                return;
            }
        }
    }
    
</script>
    
    
</head>
<style>

</style>
<body>

    <div class= "purchase_main">
        <h3 class="purchase_main_h3">일촌들에게 아이템을 선물해보세요!</h3>
        <input type= "hidden" value = "${category}">
    <!-- 여기서부터 상품 1개 -->

    <c:forEach items="${productList}" var="productVO">
	   
	        <div class="purchase_main_product">
	         <form method="post" action="insertCart"  name="formm" class="purchase_form">
	            <div class="purchase_main_product_div">
	                <div class="purchase_main_product_div_div">

	               			 <img class="purchase_main_product_div_img" src="${pageContext.request.contextPath}/resources/img//${ productVO.category}/${ productVO.name}.gif">


	              	 
	              	
	                </div>  
	                <a class ="purchase_main_product_div_title" id="name" href="#">${productVO.name}</a>
	                <br>
	                <img src="${pageContext.request.contextPath}/resources/img/dotori.png" class="purchase_main_product_div_dotoriimg" >
	                <input type="hidden" name="productID" value="${ productVO.marketid}">
	                <input type="hidden" name="category" value="${ productVO.category}">
	                <input type="hidden" name="name" value="${ productVO.name}">	               
	                <input type="hidden" name="price" value="${ productVO.price}">
	                <input type="hidden" name="filename" value="${ productVO.filename}">
					<input type = "hidden" name = "memberNo" value = "${sessionScope.loginUser}">

	                <a class="purchase_main_product_div_dotori" id="price"  >${productVO.price}</a>
	            </div>
	            <div class="purchase_main_product_cart">
	                <input type="button" onclick="send2()" value = "insert cart">
	               	<input type="submit" value= "담기">
	                <input class= "purchase_main_product_cart_button" type="button" value = "바로 구매하기">
	
	            </div>
	            </form>
	        </div>
        
    </c:forEach>    



    

    </div>

</body>
<script>
function
	send2() {
		document.formm.action = "insertCart";
		document.formm.submit(); 
		alert("장바구니 담기 성공");
	}

</script>
</html>