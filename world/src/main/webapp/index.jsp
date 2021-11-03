<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="UTF-8">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>42월드</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/index.css?ver=1.1 ">

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>42World</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.8.js"></script>
    <script type="text/javascript">
    
/*     function requestPay2() {
		
    	
    	
    		//가맹점 식별코드
    		IMP.init('imp96463033');
    		IMP.request_pay({
    		    pg : 'kcp',
    		    pay_method : 'card',
    		    merchant_uid :2,
    		    name : '도토리' , //결제창에서 보여질 이름
    		    amount : 100, //실제 결제되는 가격
    		    buyer_email : 'iamport@siot.do',
    		    buyer_name : '구매자이름',
    		    buyer_tel : '010-1234-5678',
    		    buyer_addr : '서울 강남구 도곡동',
    		    buyer_postcode : '123-456'
    		}, function(rsp) {
    			console.log(rsp);
    			// 결제검증
    			$.ajax({
    	        	type : "POST",
    	        	data : 'memberNo=' + '3' +'&giftTo='+'3' +'&price='+'100',
    	        	url : "insertDotory" 
    	        }).done(function(data) {
    	        	
    	        	console.log(data);
    	        	
    	        	// 위의 rsp.paid_amount 와 data.response.amount를 비교한후 로직 실행 (import 서버검증)
    	        	if(rsp.paid_amount == data.response.amount){
    		        	alert("결제 및 결제검증완료");
    	        	} else {
    	        		alert("결제 실패");
    	        	}
    	        });
    		}
    		
    		
    		
    		);
    	
      } */
    </script>
</head>
<body>
	<form method="post" action="login" id="formm">
		<div class="index_main">
			<div class="index_login">
				<div class="index_login_logo">
					<a>
						<ul>
							<li>
								<img class="index_login_logo_logo1" src="${pageContext.request.contextPath}/resources/img/logo1.jpeg">
							</li>
							<li>
								<img class="index_login_logo_logo2" src="${pageContext.request.contextPath}/resources/img/logo2.jpeg">
							</li>
						</ul>
					</a>
				</div>
				<div class="index_login_input">
					<input type="text" id="email" name="email" placeholder="아이디(이메일)">
					<input type="text" id="password" name="password" placeholder="비밀번호">
				</div>
				<div class="index_login_button">
					<input type="submit" value="로그인">
				</div>
				<div class="index_login_link">
					<ul class="index_login_link_ul">
						<li>
							<a class="index_login_link_finduser" href=#>아이디/비밀번호 찾기</a>

						</li>
						<li>
							<a>|</a>
						</li>
						<li>
							<a class="index_login_link_join" href=#>회원가입</a>
						</li>
					</ul>
					<div id="ball" class="ball1">1</div>
					<div id="ball1" class="ball2">2</div>
					<div id="ball2" class="ball3"></div>
					<div id="ball" class="ball4">4</div>
					<div id="ball2" class="ball5">5</div>
					<div id="ball1" class="ball6">6</div>
					<div id="ball2" class="ball7">7</div>
					<div id="ball" class="ball8">8</div>
					<div id="ball2" class="ball9">9</div>
					<div id="ball1" class="ball10">10</div>
				</div>

			</div>

		</div>
		<div id="box"></div>
	</form>
</body>
    
    

</html>