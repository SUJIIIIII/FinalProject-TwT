/*$(document).ready(function(){
   // 스팟 목록 해당하는 도시외에 제거
   var city_code_total = $(".city_item").data("code");
   var name_num_total = $(".list_box").children(".day_spot_item").length; // 전체 검색 시 가져올 것들 갯수
   var count = 0;
   for(i = 0; i < name_num_total + 1; i++){
      var city_val_total = $(".list_box").children(".day_spot_item").eq(i).data("city");
      if(city_code_total == city_val_total){ 
         $(".list_box").children(".day_spot_item").eq(i).show();
         count++;
      } else {
         $(".list_box").children(".day_spot_item").eq(i).hide();
      }
   } // end
   alert(count);
});*/


$(document).ready(function(){
	
	// 페이지 새고로침 액션
	$(window).on("beforeunload", function() {
		return 'test';
	});
	
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
		
		var del_type = $(this).parent().parent().data("type"); // 삭제하려는 스팟의 type
		var tmp = $(this).parent().parent().data("img"); // 삭제할는 스팟의 index(show() 리스트에서)
		
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
		var del_seq = tmp.substr(3,2); // show 리스트의 index
		del_seq *= 1; // string to int
		delMarkerIcon(del_seq-1,del_type);
		/*var del_seq = $(this).parent().parent().data("seq"); // 삭제하려는 마커의 index*/      
      
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
				// alert($(".start_date").html());
			}
		});	
	}); // date picker end
	
	// 장소 검색 엔터로 입력시 search
	$("#input_search").keydown(function(e) {
		if(e.keyCode == 13){
			// 전체 검색 메소드
			var input_val = $(this).val(); // 입력한 값
			var search_type = $("#search_type").val(); // 도시별 검색인지, 전체 검색인지.
			var name_num = $(".list_box").children(".day_spot_item").length; // 전체 검색 시 가져올 것들 갯수
			alert(search_type);
			
			if(search_type == "city"){
				var city_code = "CT1"; // 테스트용 임시 변수, 위에서 가져와야함. 
				for(i = 0; i < name_num + 1; i++){
					var name = $(".list_box").children(".day_spot_item").eq(i).data("name");
					var city_val = $(".list_box").children(".day_spot_item").eq(i).data("city");
					if(name.indexOf(input_val) == -1 && city_code == city_val){ 
						$(".list_box").children(".day_spot_item").eq(i).hide();
					} else {
						$(".list_box").children(".day_spot_item").eq(i).show();
					}
				}
			} else if(search_type == "total"){
				for(i = 0; i < name_num + 1; i++){
					var name = $(".list_box").children(".day_spot_item").eq(i).data("name");
					if(name.indexOf(input_val) == -1){ 
						$(".list_box").children(".day_spot_item").eq(i).hide();
					} else {
						$(".list_box").children(".day_spot_item").eq(i).show();
					}
				} // 전체검색 end
			} else{
				alert("검색타입이 올바르지 않습니다. 다시 확인해 주세요");
			}
		}
	}); // 장소 검색 - 1(검색창으로) end
	
	// 검색 타입 선택
	$(".radio").on("click", function() {
		$(".radio").removeClass("on");
		$(this).addClass("on");
		$(".check").attr("class", "far fa-circle check");
		$(this).children(".et-radio").children().attr("class", "far fa-check-circle check");
		
		if($(this).hasClass("on")){ // search type 바꿔주기
			var type = $(this).data("val");
			$("#search_type").val(type);
		}
	});
	
	// 검색 카테고리 사진 변경
	$(".list_cat_item").on("click", function() {
		pre_img = $('.list_cat_item.on img').attr('src');
		pre_change_img = pre_img.replace('_c','_a');
		$('.list_cat_item.on img').attr('src', pre_change_img);
		$('.list_cat_item.on').removeClass('on');

		this_img = $(this).find('img').attr('src');
		this_change_img = this_img.replace('_a','_c');
		$(this).find('img').attr('src',this_change_img);  
		$(this).addClass('on');
		
		if($(this).hasClass("on")){
			var type = $(this).data("type");
			alert("type : " + type);
			var name_num = $(".list_box").children(".day_spot_item").length; // 전체 검색 시 가져올 것들 갯수
			
			for(i = 0; i < name_num + 1; i++){
				var spot_type = $(".list_box").children(".day_spot_item").eq(i).data("type");
				if(type == spot_type){
					$(".list_box").children(".day_spot_item").eq(i).show();
				} else {
					$(".list_box").children(".day_spot_item").eq(i).hide();
				}
			} // 전체검색 end
		}
	});	
	
   // Day 추가하기
   $("#add_plan_day").on("click", function() {
      $("#schedule_detail_box").hide();
      var day_index = $("#cat_menu").children().length;
      var city_name = $(".list_title").children("span").text();
      
      $("#cat_menu").append(
         "<li data='" + day_index + "' data-date='02.01' data-day_week='6' data-f_ci='87' data-f_lat='18.79906428' data-f_lng='98.99514161' original-title='치앙마이'>"
            +    "<div class='fl cat_date_left_box'>"
            +       "<div class='cat_left_day'>DAY" + day_index+ "</div>"
            +      "<div class='cat_left_date'>02.01</div>"   
            +   "</div>"
            +   "<div class='fl cat_date_right_box'>"
            +      "<div class='cat_right_weekday'>토요일</div>"
            +      "<div class='cat_right_city'>" + city_name + "</div>"
            +   "</div>"
            +   "<div class='clear'></div>" + 
         "</li>"
      );   
   });   
});


// Day 수정 버튼 클릭
function day_edit_start(){
   $('#overlay_day_edit').show();
}


//Day 수정 완료
function day_edit_com(){
	$('#overlay_day_edit').hide();
}

