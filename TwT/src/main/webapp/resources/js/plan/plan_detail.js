$(document).ready(function(){
   
   // 일정에 MouseHover 했을때 동작
   $(document).on("mouseenter",".day_spot_item",function(){
      $(this).children(".item_ctrl_box").css("display", "block" );
   });
   
   $(document).on("mouseleave",".day_spot_item",function(){
      $(this).children(".item_ctrl_box").css("display", "none" );
   });
   


   // 추가한 스팟 삭제 및 재설정
   $(document).on("click",".btn_del",function(){      
      var spot_num = $(this).parents("#schedule_detail_box").children().length; // 일정에 넣어둔 spot_item 갯수
      var spot_del_index = // 삭제하려는 index 값
         $(this).parents(".day_spot_item").children(".img_box").children(".spot_order_box").html();
      // index 숫자 재설정
      if(spot_del_index == spot_num){
         // 삭제하려는 숫자가 끝번호인 경우는 숫자 재배치가 필요없음
         $(this).parents(".day_spot_item").remove(); // 일정 삭제 메소드
      } else {
         // 번호재배치
         for(i = spot_del_index; i <= spot_num; i++){
            $(this).parents("#schedule_detail_box").children().eq(i).children(".img_box").children(".spot_order_box").text(i);
            var id = $(this).parents("#schedule_detail_box").children().eq(i).attr("id", "spot"+i);
         }
         // 삭제
         $(this).parents(".day_spot_item").remove();
      }
      
      
      // 스팟 삭제시 마커 이미지 변경
      var del_seq = $(this).parent().parent().data("seq"); // 삭제하려는 마커의 index
      var del_type = $(this).parent().parent().data("type"); // 삭제하려는 마커의 type
      delMarkerIcon(del_seq,del_type);
      
      // 스팟 삭제시 찍힌 폴리라인 삭제 후 재생성
      for(var i=0;i<paths.length;i++){
    	  paths[i].setMap(null);
      }
      paths = [];
      addPath();
      
   });   
   
   $("#schedule_clear").on("click", function() {
      if(confirm("초기화 하시겠습니까?")){
         $("#schedule_detail_box").children().remove();
      } else {
         alert("취소 되었습니다.");      
         }
   });
   
   // datepicker 선언
   $(function() {
      $("#datepick_input").datepicker({
         showOn : "both",
         buttonImage : "/twt/resources/images/plan/plan_detail/pn_cal_edit_btn2.png",
         buttonImageOnly : true,
         onSelect : function(dateText) {
            // 수정된 날짜 클릭시 시작 날짜 변경
            var date = $(this).val();
            $(".start_date").text(date);
            alert($(".start_date").html());
         }
      });   
   }); // date picker end
   
   // 장소 검색 엔터로 입력시 search
   $("#input_search").keydown(function(e) {
      if(e.keyCode == 13){
         // 전체 검색 메소드
         var input_val = $(this).val();
         // var search_type = $("#search_type").
         var name_num = $(".list_box").children(".day_spot_item").length; // 전체 검색 시 가져올 것들 갯수
         for(i = 0; i < name_num + 1; i++){
            var name = $(".list_box").children(".day_spot_item").eq(i).data("name");
            if(name.indexOf(input_val) == -1){ 
               $(".list_box").children(".day_spot_item").eq(i).hide();
            } else {
               // alert("입력한 값 : " + input_val + ", 찾은 값 : " + name);
            }

         }  // 전체검색 end
         
         
         
      }
   }); // 장소 검색 - 1(검색창으로) end
   
   
   
});


// Day 수정 버튼 클릭
function day_edit_start(){
   $('#overlay_day_edit').show();
}


//Day 수정 완료
function day_edit_com(){
   $('#overlay_day_edit').hide();
}