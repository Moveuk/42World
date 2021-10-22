let VisitorLogWrite__submitDone = false;

$(function () {
    $("input.submit").click(function (e) {
		
		/* 오른쪽 탭 클릭시 active class 제거 및 탭 색 반전 하이라이트 */
		e.preventDefault( );
		VisitorLogWrite__submit($("form#insertVisitorsLogForm"));


		// jquery load로 탭별로 불러옴
		$(".tab_content").load("visitors");
		
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