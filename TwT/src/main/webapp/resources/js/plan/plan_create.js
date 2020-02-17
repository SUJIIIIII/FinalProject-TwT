/**
 * 
 */

$(document).ready(function() {
   // 선택한 도시번호 추가하기
   $(".item").on("click", function() {
	      $('#select_detail_view_city').css("display", "block");
	      var city = $(this).attr("id");
	      var city_no = $("#"+city).data("no");
	      var city_name = $("this").text();
	      $("#city_no").val(city_no);
	      $(".cityname").html(city_name);
   });

   // 입력한 여행 제목 추가하기
   $("#modal-name").blur(function () {
      var traveltitle = $("#modal").val();
      $("#title").val(traveltitle);
   });

   // 모달 생성
   $("#createplan-modal").on("click", function () {
      $("#createmodal").css("display", "block");
      $('#select_detail_view_city').css("display", "none");
   });

   // close 버튼 클릭시 모달 창 닫기
   $(".modal-close").on("click", function () {
      $("#createmodal").style.display = "none";
   });
   
   // 검은색 부분 아무데나 클릭시 모달 창 끄기
   $(window).on("click", function(e){
      if(e.target == $("#createmodal")){
         $("#createmodal").css("display", "none");
      }
   });
   // 데이터 detail 페이지로 전달
   $("#submitDetail").on("click", function() {
      $("#createform").submit();
   });
});

