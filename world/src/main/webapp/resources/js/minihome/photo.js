$(function () {
    $(".photo_content").hide();
    $(".photoFolders li:first").addClass("active").show();
    $(".photoFolders:first img").attr('src', '../resources/img/open.png');
    $(".photo_content:first").show();

    $(".photoFolders li").click(function () {

		
		/* 탭 href에서 jsp파일 이름 불러옴 */
        var folderName = $(this).find("a").text();


        return false;
    });
})
$(function () {
    $(".photoFolders li a").click(function () {
		$(".tab_content").load($(this).attr("href"));
    })
})

/*function folder(){
	var po = JSON.parse(${photoList});
	alert(po[2].content );
	
	
	
}*/
		