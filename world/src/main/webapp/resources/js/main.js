/* 메인 페이지 오른쪽 탭 기능 */
$(function () {
    $(".tabs li:first a").css({ "color": "black" });
    $(".tab_content:first").show();

    $(".tabs li").click(function (e) {
      
      /* 오른쪽 탭 클릭시 active class 제거 및 탭 색 반전 하이라이트 */
      e.preventDefault( );
        $(".tabs li").removeClass("active");
        $(".tabs li").find("a").css({ "color": "white" });
        $(this).addClass("active");
        $(this).find("a").css({ "color": "black" });
        /*$(".tab_content").hide();*/

      /* 탭 href에서 jsp파일 이름 불러옴 */
        var activeFilePath = $(this).find("a").attr("href");

      // jquery load로 탭별로 불러옴
      $(".tab_content").load(activeFilePath);
      
        return false;
    });
})


function edit() {
    window.open("editLeftHome.html", "edit", "width=400, height=600")
}
function chkFreind() {
    window.open("chkFriend.html", "edit", "width=400, height=600")
}
function writingBoard() {
    window.open("addBoard.html", "edit", "width=400, height=600")
}
function goMinihome(){
    alert("해당 미니홈피 사이트 이동");
}