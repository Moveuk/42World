let VisitorLogWrite__submitDone = false;

$(function() {
	// 방명록을 등록할 때
	$("input.submit").click(function(e) {

		/* 오른쪽 탭 클릭시 active class 제거 및 탭 색 반전 하이라이트 */
		e.preventDefault();
		VisitorLogWrite__submit($("form#insertVisitorsLogForm"));


		// jquery load로 탭별로 불러옴
		$(".tab_content").load("visitors");

		return false;
	});

	// 방명록을 삭제할떄
	$(".visitor_top2_ul a.visitor_delete").click(function(e) {

		e.preventDefault();
			console.log("삭제 실행");
		$.ajax({
			type: "POST",
			url: "visitors/deleteVisitorLog",
			data: $("this").parent().serialize(), // serializes the form's elements.
			success: function(data) {
				alert(data); // show response from the php script.
			}
		});


		return false;
	});
})

function VisitorLogWrite__submit(form) {
	console.log("방명록 유효성 검사 시작");
	if (VisitorLogWrite__submitDone) {
		return;
	}

	if (form.content.value.length == 0) {
		alert('댓글 내용을 입력해주세요.');
		form.content.focus();
		return;
	}
	form.submit();
	VisitorLogWrite__submitDone = true;
}